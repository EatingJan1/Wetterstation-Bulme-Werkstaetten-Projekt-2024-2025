# Wetterstation-Bulme-Werkstätten-Projekt-2024/2025

## Vorbereitung:

### Ideen:
#### Outdoor-Wetterstation
Gewollte Messungen:
- Luftfeuchtigkeit //easy BME680(END OF LIVE)/BME688 ist bisl besser und gleiches PINOUT
- UV-Strahlung //
- Luftdruck  //easy BME680(END OF LIVE)/BME688 ist bisl besser und gleiches PINOUT
- Luftpartikel 
- Temperatur  //easy BME680(END OF LIVE)/BME688 ist bisl besser und gleiches PINOUT
- Regenmenge // Kippwage & Regenitensität über Zeit
- Windrichtung
- Windgeschwindigkeit
- Bodenfeuchtigkeit 
- UV-Strahlung Winkel //Berechnen aufgrund von Breitengrad und Höhenlage
- Dezibel Messung (Optional) // Eher NEIN
- Höhenlage  //GPS oder Luftdruck aber zählt eher zu Berchnungen
- CO2 gehalt  

 #### Belüftete Sensoren  //Mit 5V Lüfter hätte ich gesagt
- Temperatur
- Luftfeuchtigkeit
- CO2 Gehalt
- Luftdruck
- Luftpartikel

Berechnung:
- Taupunkt
- kWh/m2 (Sonneneinstrahlung) //Mehrere Sensoren notwendig zu aufwendig
- gefühlte Temperatur // Wind + Temp +Sonneneinstrahlung Vielleicht Über temperatur direkt an der gehäusewand ob eher hohe Sonneneinstrahlung oder niedrige 
- Sichtweite  // Feinstaub wichtig 
- Photovoltaik für Outdoor  // Zu viele Variablen
- Windmessung über Ultraschalwandler
- Übertragung: Thread


#### Mini Station:
- Misst alle Daten in einem Standard Indoor Raum
- Gewollte Messung:
- Temperatur
- Luftfeuchtigkeit
- CO2 Gehalt
- Luftdruck

#### Daten Station (HUB)


#### Stromversorgung für ALLE STATIONEN:
- USB C 5V -> 3,3V Step-down Converter

## Liste der Sachen für das Projekt:
- Router-CPU: ESP32-S3
- Router-Thread: ESP32-H2
- Devices: ESP32-C6


## Sensor List:


<table>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl66 width=124 style='height:15.0pt;width:93pt'>Name</td>
  <td class=xl66 width=143 style='width:107pt'>Zweck</td>
  <td class=xl66 width=143 style='width:107pt'>Einheit</td>
  <td class=xl67 width=977 style='width:733pt'>&nbsp;</td>

 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl65 style='height:15.0pt'>PT 100/1000</td>
  <td class=xl65>Temperaturmessung</td>
  <td class=xl65>°C</td>
  <td></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl65 style='height:15.0pt'>Platine</td>
  <td class=xl65>Luftfeuchtigkeit</td>
  <td class=xl65>%</td>
  <td></td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl65 style='height:15.0pt'>CCS811B-JOPR5K</td>
  <td class=xl65>Luftqualität</td>
  <td class=xl65>ppm</td>
  <td>https://www.digikey.at/de/products/detail/sciosense/CCS811B-JOPR5K/7428298?s=N4IgTCBcDaIMJwMoA4CMqBCBaAUgeQAUAlAVgGkQBdAXyA</td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl65 style='height:15.0pt'>BMP280</td>
  <td class=xl65>Luftdruck</td>
  <td class=xl65>bar</td>
  <td>https://at.rs-online.com/web/p/drucksensor-ics/8496187</td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl65 style='height:15.0pt'></td>
  <td class=xl65></td>
  <td class=xl65></td>
  <td></td>
 </tr>
 <tr height=0 style='display:none'>
  <td width=124 style='width:93pt'></td>
  <td width=143 style='width:107pt'></td>
  <td width=143 style='width:107pt'></td>
  <td width=977 style='width:733pt'></td>
 </tr>
</table>



## Webseiten für Informationen:

- https://www.threadgroup.org/What-is-Thread/Developers
- https://www.elsner-elektronik.de/de/professionelle-wetterdaten-erfassung-mit-suntracer-knx-pro
- https://github.com/espressif/esp-matter

### ESP Blogs -> OTA & Matter

- https://developer.espressif.com/blog/ota-updates-framework/
- https://developer.espressif.com/blog/matter/
- https://developer.espressif.com/blog/matter-device-to-device-automations/
- https://developer.espressif.com/blog/matter-bridge-for-non-matter-devices/
- https://developer.espressif.com/blog/matter-thread-border-router-in-matter/
- https://developer.espressif.com/blog/matter-multi-admin-identifiers-and-fabrics/
- https://developer.espressif.com/blog/matter-security-model/
- https://developer.espressif.com/blog/esp32-c2-and-why-it-matter-s/
- https://developer.espressif.com/blog/ota-firmware-updates-with-esp-privilege-separation/
- https://developer.espressif.com/blog/espressif-thread-border-router/
- https://developer.espressif.com/blog/matter-and-certificate-revocation/
- https://developer.espressif.com/blog/page/5/
- https://www.espressif.com
