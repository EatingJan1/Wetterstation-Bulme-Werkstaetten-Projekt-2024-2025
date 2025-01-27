/*
 * SPDX-FileCopyrightText: 2021-2024 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: CC0-1.0
 *
 * OpenThread mit Matter-Integration und DHT11-Temperatursensor
 *
 * Dieses Beispiel liest Daten eines DHT11-Sensors aus und sendet sie 
 * mit dem Matter-Standard über OpenThread ins Netzwerk. 
 */

#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include "sdkconfig.h"
#include "esp_err.h"
#include "esp_event.h"
#include "esp_log.h"
#include "esp_netif.h"
#include "esp_openthread.h"
#include "esp_openthread_cli.h"
#include "esp_openthread_lock.h"
#include "esp_openthread_netif_glue.h"
#include "esp_ot_config.h"
#include "esp_vfs_eventfd.h"
#include "driver/gpio.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "nvs_flash.h"
#include "openthread/cli.h"
#include "dht.h" // Bibliothek für DHT-Sensoren (z. B. https://github.com/beegee-tokyo/DHTesp)
#include "matter.h" // Matter-API zur Gerätebeschreibung

#define TAG "ot_matter_dht11"
#define DHT11_GPIO_PIN 4 // GPIO-Pin, an dem der DHT11 angeschlossen ist

// Matter Device-Type und Cluster-Konfiguration
#define MATTER_DEVICE_TYPE 0x0302 // Temperatur- und Feuchtigkeitssensor
#define VENDOR_ID 0x1234 // Beispielhafte Hersteller-ID
#define PRODUCT_ID 0x5678 // Beispielhafte Produkt-ID
#define SETUP_PIN_CODE "12345678" // Setup-PIN für Matter-Integration

static esp_netif_t *init_openthread_netif(const esp_openthread_platform_config_t *config)
{
    esp_netif_config_t cfg = ESP_NETIF_DEFAULT_OPENTHREAD();
    esp_netif_t *netif = esp_netif_new(&cfg);
    assert(netif != NULL);
    ESP_ERROR_CHECK(esp_netif_attach(netif, esp_openthread_netif_glue_init(config)));

    return netif;
}

static void dht11_task(void *param)
{
    // Matter-Attribute für Temperatur und Luftfeuchtigkeit initialisieren
    matter_cluster_t *temp_cluster = matter_cluster_create_temperature();
    matter_cluster_t *humidity_cluster = matter_cluster_create_humidity();

    while (1) {
        int16_t temperature = 0;
        int16_t humidity = 0;

        esp_err_t result = dht_read_data(DHT_TYPE_DHT11, DHT11_GPIO_PIN, &humidity, &temperature);
        if (result == ESP_OK) {
            ESP_LOGI(TAG, "Temperatur: %.1f °C, Luftfeuchtigkeit: %.1f %%", temperature / 10.0, humidity / 10.0);

            // Matter-Daten aktualisieren
            matter_cluster_set_temperature(temp_cluster, temperature);
            matter_cluster_set_humidity(humidity_cluster, humidity);
        } else {
            ESP_LOGW(TAG, "Fehler beim Lesen des DHT11-Sensors: %s", esp_err_to_name(result));
        }

        vTaskDelay(pdMS_TO_TICKS(5000)); // 5 Sekunden warten
    }
}

static void ot_task_worker(void *aContext)
{
    esp_openthread_platform_config_t config = {
        .radio_config = ESP_OPENTHREAD_DEFAULT_RADIO_CONFIG(),
        .host_config = ESP_OPENTHREAD_DEFAULT_HOST_CONFIG(),
        .port_config = ESP_OPENTHREAD_DEFAULT_PORT_CONFIG(),
    };

    // OpenThread-Stack initialisieren
    ESP_ERROR_CHECK(esp_openthread_init(&config));

    // CLI initialisieren
    esp_openthread_cli_init();

    esp_netif_t *openthread_netif = init_openthread_netif(&config);
    esp_netif_set_default_netif(openthread_netif);

    // Matter-Device initialisieren
    matter_device_t *device = matter_device_create("DHT11-Sensor", VENDOR_ID, PRODUCT_ID, MATTER_DEVICE_TYPE);

    // Setup-PIN und QR-Code konfigurieren
    ESP_ERROR_CHECK(matter_device_set_pairing_code(device, SETUP_PIN_CODE));
    char qr_code[256];
    ESP_ERROR_CHECK(matter_device_generate_qr_code(device, qr_code, sizeof(qr_code)));
    ESP_LOGI(TAG, "Matter QR-Code: %s", qr_code);

    ESP_ERROR_CHECK(matter_device_register(device));

    // OpenThread-CLI starten
    esp_openthread_cli_create_task();

    // Haupt-Loop von OpenThread
    esp_openthread_launch_mainloop();

    // Ressourcen freigeben
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

    // GPIO-Pin initialisieren
    gpio_config_t io_conf = {
        .pin_bit_mask = 1ULL << DHT11_GPIO_PIN,
        .mode = GPIO_MODE_INPUT_OUTPUT_OD,
        .pull_up_en = GPIO_PULLUP_ENABLE,
    };
    gpio_config(&io_conf);

    // OpenThread-Task starten
    xTaskCreate(ot_task_worker, "ot_cli_main", 10240, xTaskGetCurrentTaskHandle(), 5, NULL);

    // DHT11-Task starten
    xTaskCreate(dht11_task, "dht11_task", 4096, NULL, 5, NULL);
}
