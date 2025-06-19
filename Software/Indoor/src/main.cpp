#include <Matter.h>
#include <WiFi.h>
#include "LIB/Matter/matter_endpoints/MatterAirQualitySensor.h"
#include "LIB/Matter/matter_endpoints/MatterLightSensor.h"
#include "LIB/LEDAnimation/src/LEDAnimation.h"
#include <MHZ19.h>
#include <SoftwareSerial.h>
#include <bme68xLibrary.h>
#include <SparkFun_VEML6030_Ambient_Light_Sensor.h>
#include <Wire.h>

#include "pinout_brd_V1:0.h"

MatterTemperatureSensor Temp;
MatterHumiditySensor Hum;
MatterPressureSensor Pres;
MatterAirQualitySensor CO2;
MatterLightSensor Light;
MatterOnOffPlugin OnOffPlugin;

MHZ19 mhz19;
SoftwareSerial CO2Serial(RX_CO2, TX_CO2);


Bme68x bme;
SparkFun_Ambient_Light light_I2C(AL_ADDR);

Adafruit_NeoPixel strip(NUM_PIXELS, WS2812_Pin, NEO_GRB + NEO_KHZ800);
LEDAnimation Led = LEDAnimation(strip, NUM_PIXELS); 


const char *ssid = "";
const char *password = "";



uint32_t button_time_stamp = 0;                
bool button_state = false;                     
uint32_t time_diff = 0;
const uint32_t decommissioningTimeout = 20000;
const uint32_t co2timer = 5000;

float gain = .125;
int integrationTime = 800;
int powMode = 2; // range [1; 4] 


void setaqilight(uint8_t aqi)
{
    if (1 == aqi)
    {
      Led.setColor(strip.Color(0, 0, 255));
      Led.setAnimation(AnimationType::Static);
    }
    else if (2 == aqi)
    {
      Led.setColor(strip.Color(0, 255, 0));
      Led.setAnimation(AnimationType::Static);
    }
    else if (3 == aqi)
    {
      Led.setColor(strip.Color(213, 78, 0));
      Led.setAnimation(AnimationType::Static);
    }
    else if (4 == aqi)
    {
      Led.setColor(strip.Color(255, 0, 0));
      Led.setAnimation(AnimationType::Static);
    }
    else if (5 == aqi)
    {
      Led.setAnimation(AnimationType::CriticalWarning);
    }
    else
    {
        //Led.setAnimation(AnimationType::None);
    }
}

bool setPluginOnOff(bool state) {
  Serial.printf("User Callback :: New Plugin State = %s\r\n", state ? "ON" : "OFF");
  if (state) {
    setaqilight(CO2.getAirQuality());
  } else {
    Led.setAnimation(AnimationType::None);
  }

  //matterPref.putBool(onOffPrefKey, state);
  return true;
}

void setup() {
  Serial.begin(115200);
  
  Led.setColor(strip.Color(0,0,255));
  Led.setAnimation(AnimationType::StartUp);
  
  delay(1000);

  pinMode(Button_Pin, INPUT);

  WiFi.begin(ssid, password);

  
  // Wait for WiFi connection
  uint32_t counter = 0;
  while (WiFi.status() != WL_CONNECTED) {

    Led.setColor(strip.Color(90, 70, 0));
    Led.setAnimation(AnimationType::Connection);
    // WiFi searching feedback
    Serial.print(".");
    delay(500);
    // adds a new line every 30 seconds
    counter++;
    if (!(counter % 60)) {
      Serial.println();
    }
  }

  Serial.println();



  Led.setAnimation(AnimationType::None);

  Temp.begin();
  Hum.begin();
  Pres.begin();
  Light.begin();
  CO2.begin();
  OnOffPlugin.begin(true);
  OnOffPlugin.onChange(setPluginOnOff);

  Matter.begin();


  if (!Matter.isDeviceCommissioned()) {
    Serial.println("");
    Serial.println("Indoor weather Station is not commissioned yet.");
    Serial.println("Initiate the device discovery in your Matter environment.");
    Serial.println("Commission it to your Matter hub with the Matter Label");
    Serial.printf("Manual pairing code: %s\r\n", Matter.getManualPairingCode().c_str());
    Serial.printf("QR code URL: %s\r\n", Matter.getOnboardingQRCodeUrl().c_str());
    
    Led.setColor(strip.Color(0,0,255));   
    Led.setAnimation(AnimationType::Rotating);

    uint32_t timeCount = 0;


    while (!Matter.isDeviceCommissioned()) {
      delay(100);
      if ((timeCount++ % 100) == 0) {
        Serial.println("Indoor weather Station not commissioned yet. Waiting for commissioning.");
      }
    }
    
    Serial.println("Indoor weather Station is commissioned and connected to Wi-Fi. Ready for use.");
    Led.setAnimation(AnimationType::None);
  }
  if(Matter.isDeviceCommissioned())
  {
    OnOffPlugin.updateAccessory();  // configure the Plugin based on initial state
  }

  CO2Serial.begin(9600);
  mhz19.begin(CO2Serial);

  mhz19.autoCalibration(true);

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

}

void loop() {
  static uint32_t timeCounter = 0;

  if (!(timeCounter++ % 10)) { 
    //TODO: For long term use Change Time %300(5min) or %600(10min) or % 900(15min)
  	bme68xData data;

    Serial.printf("Current Temperature is %.02f °C\r\n", Temp.getTemperature());
    Serial.printf("Current Humidity is %.02f %\r\n", Hum.getHumidity());
    Serial.printf("Current Pressure is %.02f hPa\r\n", Pres.getPressure());
    Serial.printf("Current Light is %d Lux\r\n", Light.getlight());
    Serial.printf("Sensor Light is %d Lux\r\n", light_I2C.readLight());
    Serial.printf("Current C02 is %.02f ppm\r\n", CO2.getCO2());
    Serial.printf("Current C02 is %d AQI\r\n", CO2.getAirQuality());

	bme.setOpMode(BME68X_FORCED_MODE);
  Serial.print("LIGHT: ");
  Serial.println(light_I2C.readLight());
	delay(500);
  if (bme.fetchData())
	{
		bme.getData(data);
	  Temp.setTemperature(data.temperature);
    Hum.setHumidity(data.humidity);
    Pres.setPressure(data.pressure);  
  }
    Light.setlight(light_I2C.readLight());
    CO2.setCO2(mhz19.getCO2());

    setaqilight(CO2.getAirQuality());
  }

  if (digitalRead(Button_Pin) == LOW and !button_state) {
    button_time_stamp = millis();
    button_state = true;
  }

  if (digitalRead(Button_Pin) == HIGH and button_state) {
    time_diff = millis() - button_time_stamp;
    OnOffPlugin.toggle();
    button_state = false;
  }

  


  if (time_diff > co2timer and decommissioningTimeout > time_diff)
  {
    Serial.println("Co2 calibrate Mode");
    Led.setColor(strip.Color(255,0,0));
    Led.setAnimation(AnimationType::Connection);
    mhz19.calibrate();
    button_time_stamp = millis();
    time_diff = 0;
    delay(1000);
    Led.setAnimation(AnimationType::None);
  }
  
  if (time_diff > decommissioningTimeout)
  {
    Serial.println("Decommissioning Indoor weather Station. It shall be commissioned again."); 
    Matter.decommission();
    button_time_stamp = millis();
    time_diff = 0;
  }

  delay(500);
}