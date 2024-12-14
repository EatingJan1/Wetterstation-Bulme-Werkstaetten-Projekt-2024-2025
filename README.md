# Wetterstation-Bulme-Werkstätten-Projekt-2024/2025

## Vorbereitung:

### Ideen:
#### Outdoor-Wetterstation
Gewollte Messungen:
- Luftfeuchtigkeit
- UV-Strahlung
- Luftdruck
- Luftpartikel
- Temperatur
- Regenmenge
- Windrichtung
- Windgeschwindigkeit
- Bodenfeuchtigkeit
- UV-Strahlung Winkel
- Dezibel Messung
- Höhenlage
- CO2 gehalt
  
Berechnung:
- Taupunkt
- kWh/m2 (Sonneneinstrahlung)
- gefühlte Temperatur
- Sichtweite
- Photovoltaik für Outdoor
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
- Power over Ethernet (POE)

Stromversorgung:
- USB C

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


## Liste der Sachen für das Projekt:
- Router-CPU: ESP32-S3
- Router-Thread: ESP32-H2
- Devices: ESP32-C6


## Webseiten für Informationen:

- https://www.threadgroup.org/What-is-Thread/Developers
- https://www.elsner-elektronik.de/de/professionelle-wetterdaten-erfassung-mit-suntracer-knx-pro
- https://github.com/espressif/esp-matter
