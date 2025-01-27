#include <stdio.h>
#include <unistd.h>
#include <string.h>

#include "sdkconfig.h"
#include "esp_err.h"
#include "esp_event.h"
#include "esp_log.h"
#include "esp_netif.h"
#include "esp_netif_types.h"
#include "esp_openthread.h"
#include "esp_openthread_cli.h"
#include "esp_openthread_lock.h"
#include "esp_openthread_netif_glue.h"
#include "esp_openthread_types.h"
#include "esp_ot_config.h"
#include "esp_vfs_eventfd.h"
#include "driver/uart.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "hal/uart_types.h"
#include "nvs_flash.h"
#include "openthread/cli.h"
#include "openthread/instance.h"
#include "openthread/logging.h"
#include "openthread/tasklet.h"

#include "dht/dht.h" // DHT11-Bibliothek

#define TAG "ot_esp_dht11"
#define DHT11_PIN GPIO_NUM_4 // Pin, an dem der DHT11 angeschlossen ist

static esp_netif_t *init_openthread_netif(const esp_openthread_platform_config_t *config)
{
    esp_netif_config_t cfg = ESP_NETIF_DEFAULT_OPENTHREAD();
    esp_netif_t *netif = esp_netif_new(&cfg);
    assert(netif != NULL);
    ESP_ERROR_CHECK(esp_netif_attach(netif, esp_openthread_netif_glue_init(config)));

    return netif;
}

static void read_dht11_data(void)
{
    int16_t temperature = 0; // Temperatur in °C
    int16_t humidity = 0;    // Luftfeuchtigkeit in %

    // DHT11-Daten lesen
    esp_err_t res = dht_read_data(DHT_TYPE_DHT11, DHT11_PIN, &humidity, &temperature);
    if (res == ESP_OK) {
        ESP_LOGI(TAG, "Temperatur: %.1f°C, Luftfeuchtigkeit: %.1f%%", temperature / 10.0, humidity / 10.0);
    } else {
        ESP_LOGE(TAG, "Fehler beim Lesen des DHT11: %s", esp_err_to_name(res));
    }
}

static void ot_task_worker(void *aContext)
{
    esp_openthread_platform_config_t config = {
        .radio_config = ESP_OPENTHREAD_DEFAULT_RADIO_CONFIG(),
        .host_config = ESP_OPENTHREAD_DEFAULT_HOST_CONFIG(),
        .port_config = ESP_OPENTHREAD_DEFAULT_PORT_CONFIG(),
    };

    // Initialize the OpenThread stack
    ESP_ERROR_CHECK(esp_openthread_init(&config));

    esp_netif_t *openthread_netif;
    openthread_netif = init_openthread_netif(&config);
    esp_netif_set_default_netif(openthread_netif);

    esp_openthread_launch_mainloop();

    while (true)
    {
        // Sensor-Daten alle 5 Sekunden lesen
        read_dht11_data();
        vTaskDelay(pdMS_TO_TICKS(5000)); // 5 Sekunden warten
    }

    esp_openthread_netif_glue_deinit();
    esp_netif_destroy(openthread_netif);

    esp_vfs_eventfd_unregister();
    vTaskDelete(NULL);
}

void app_main(void)
{
    esp_vfs_eventfd_config_t eventfd_config = {
        .max_fds = 3,
    };

    ESP_ERROR_CHECK(nvs_flash_init());
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK(esp_vfs_eventfd_register(&eventfd_config));

    // FreeRTOS-Task für OpenThread und DHT11 starten
    xTaskCreate(ot_task_worker, "ot_cli_main", 10240, xTaskGetCurrentTaskHandle(), 5, NULL);
}
