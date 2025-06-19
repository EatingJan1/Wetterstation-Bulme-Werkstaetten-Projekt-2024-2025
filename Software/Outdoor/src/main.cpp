#include <Matter.h>
#include <WiFi.h>
#include "LIB/Matter/matter_endpoints/MatterFlowSensor.h"
#include "LIB/Matter/matter_endpoints/MatterRainSensorSensor.h"
#include "LIB/Matter/matter_endpoints/MatterLightSensor.h"
#include <SparkFun_VEML6030_Ambient_Light_Sensor.h>
#include <bme68xLibrary.h>
#include <Wire.h>
#include "LIB/Hyetometer/mwippe.h"
#include "LIB/Anemometer/src/MCAnemometer.h"
#include "LIB/average_per_time/average_per_time.h"


#include "pinout_brd_V1:0.h"


MatterTemperatureSensor Temp;
MatterHumiditySensor Hum;
MatterPressureSensor Pres;
MatterLightSensor Light;
MatterRainSensor Rain;
MatterFlowSensor RainFlow;

Bme68x bme;
SparkFun_Ambient_Light light_I2C(AL_ADDR);

mwippe rain_reed = mwippe(Reed2_Pin, rainunit);
Anemometer anemometer = Anemometer(Trigger_1, Echo_1, Trigger_2, Echo_2, Trigger_3, Echo_3, Trigger_4, Echo_4, distance_wind);

AveragePerTime perHour;

const char *ssid = "WST-WLAN";
//const char *ssid = "iPhone von Jan Niklas";
//const char *password = "Passwort";
const char *password = "";


uint32_t button_time_stamp = 0;                
bool button_state = false;                     
uint32_t time_diff = 0;
const uint32_t decommissioningTimeout = 20000;
const uint32_t windtimer = 5000;

float gain = .125;
int integrationTime = 800;
int powMode = 2; // range [1; 4] 

void setup() {
  Serial.begin(115200);
  
  pinMode(Button_Pin, INPUT);

  
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    
    delay(500);
    Serial.print(".");
  }
  Serial.println();
  

  Temp.begin();
  Hum.begin();
  Pres.begin();
  //Light.begin();
  //RainFlow.begin();
  //Rain.begin();

  Matter.begin();


  if (!Matter.isDeviceCommissioned()) {
    Serial.println("");
    Serial.println("Outdoor weather Station is not commissioned yet.");
    Serial.println("Initiate the device discovery in your Matter environment.");
    Serial.println("Commission it to your Matter hub with the Matter Label");
    Serial.printf("Manual pairing code: %s\r\n", Matter.getManualPairingCode().c_str());
    Serial.printf("QR code URL: %s\r\n", Matter.getOnboardingQRCodeUrl().c_str());

    
    uint32_t timeCount = 0;
    while (!Matter.isDeviceCommissioned()) {
      delay(100);
      if ((timeCount++ % 100) == 0) {
        Serial.println("Outdoor weather Station not commissioned yet. Waiting for commissioning.");
      }
    }
    Serial.println("Outdoor weather Station is commissioned and connected to Wi-Fi. Ready for use.");
  }



  Wire.begin(SDI, SCK, 100000);

  bme.begin(BME_ADDR, Wire);
  
  if(bme.checkStatus())
	{
    if (bme.checkStatus() == BME68X_ERROR)
		{
      Serial.println("Sensor error:" + bme.statusString());
		}
		else if (bme.checkStatus() == BME68X_WARNING)
		{
      Serial.println("Sensor Warning:" + bme.statusString());
		}
	}
  
  bme.setTPH();
  bme.setHeaterProf(300, 100);

  if(light_I2C.begin())
    Serial.println("Ready to sense some light!"); 
  else
    Serial.println("Could not communicate with the sensor!");
  
  light_I2C.setGain(gain);
  light_I2C.setIntegTime(integrationTime);

  light_I2C.setPowSavMode(powMode);
  light_I2C.enablePowSave();

  rain_reed.readpinstate();
}

void loop() {
  static uint32_t timeCounter = 0;

    if(rain_reed.runcheckerwipp())
    {
      perHour.add(1);
    }
    

  if (!(timeCounter++ % 20)) { //TODO: For long term use Change Time %300(5min) or %600(10min) or % 900(15min)
    bme68xData data;
    
    anemometer.readstate();
    Serial.printf("Current Temperature is %.02f °C\r\n", Temp.getTemperature());
    Serial.printf("Current Humidity is %.02f %\r\n", Hum.getHumidity());
    Serial.printf("Current Pressure is %.02f hPa\r\n", Pres.getPressure());
    Serial.printf("Current Light is %.02f Lux\r\n", Light.getlight());
    Serial.printf("Current Rain is %.02f m^3/h\r\n", RainFlow.getFlow());
    Serial.printf("Rain: %.02d \r\n", Rain.getRain());
    log_i("Current Windspeed is %.02f km/h\r\n",  anemometer.getspeed());
    log_i("Current Windgusts is %.02f km/h\r\n",  anemometer.getgustswind());
    log_i("Current Windangle is %.02f km/h\r\n",  anemometer.getangle());


    bme.setOpMode(BME68X_FORCED_MODE);
	  delay(500);
  if (bme.fetchData())
	{
		bme.getData(data);
	  Temp.setTemperature(data.temperature);
    Hum.setHumidity(data.humidity);
    Pres.setPressure(data.pressure);  
  }
    Light.setlight(light_I2C.readLight());
    Rain.setRain(0);


  float m3 = perHour.getSum(3600000UL)/1000;
  if(m3>0)//TODO: In next Version, check rain from last 15 minuts
  {
    Rain.setRain(1);
  }
  else
  {
    Rain.setRain(0);
  }
  RainFlow.setFlow(m3);

  anemometer.readstate();
  log_i("Angle: %f", anemometer.getangle());
  log_i("Speed: %f", anemometer.getspeed());
  log_i("Guest: %f", anemometer.getgustswind());

  }

  if(digitalRead(Button_Pin) == LOW and !button_state) {
    button_time_stamp = millis();
    button_state = true;
  }

  if(digitalRead(Button_Pin) == HIGH and button_state) {
    time_diff = millis() - button_time_stamp;
    button_state = false;
  }


  if(time_diff > windtimer and decommissioningTimeout > time_diff)
  {
    Serial.println("Anemometer calibrate Mode");
    button_time_stamp = millis();
    time_diff = 0;
  }
  
  if(time_diff > decommissioningTimeout)
  {
    Serial.println("Decommissioning Outdoor weather Station. It shall be commissioned again.");
    Matter.decommission();
    button_time_stamp = millis();
    time_diff = 0;
  }

  delay(500);
}
