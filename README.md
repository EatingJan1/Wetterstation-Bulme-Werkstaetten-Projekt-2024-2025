# Wetterstation-Bulme-Werkstätten-Projekt-2024/2025


#### Outdoor-Wetterstation
Sensoren:
- BME688: xyz
- UV-Strahlung 
- Luftdruck -> easy BME680(END OF LIVE)/BME688 ist bisl besser und gleiches PINOUT und kostet nur weniger 1€ teurer
- Luftpartikel -> gehackter von Ikea(belüftet Lüfter drin)
- Temperatur -> easy BME680(END OF LIVE)/BME688 ist bisl besser und gleiches PINOUT und kostet nur weniger 1€ teurer
- Regenmenge -> Kippwage & Regenitensität über Zeit
- Windrichtung
- Windgeschwindigkeit
- Bodenfeuchtigkeit 
- UV-Strahlung Winkel -> Berechnen durch von Geolocation
- Dezibel Messung (Optional, Eher nicht)
- Höhenlage -> GPS oder Luftdruck aber zählt eher zu Berchnungen
- CO2 gehalt


##### Belüftete Sensoren  -> Mit 5V Lüfter -> ideal ohne moglichkeit ohne Lüfter
- Temperatur
- Luftfeuchtigkeit
- CO2 Gehalt
- Luftdruck
- Luftpartikel -> gehackter von Ikea (Lüfter drin) -> Teurer es zu hacken / aus zu bauen wie einen Neuen zu Kaufen

##### Berechnung:
- Taupunkt
- kWh/m2 (Sonneneinstrahlung) -> Mehrere Sensoren notwendig zu aufwendig
- gefühlte Temperatur -> Wind + Temp +Sonneneinstrahlung Vielleicht Über temperatur direkt an der gehäusewand ob eher hohe Sonneneinstrahlung oder niedrige 
- Sichtweite -> Feinstaub wichtig 
- Photovoltaik für Outdoor -> Zu viele Variablen
- Windmessung über Ultraschalwandler

##### Funk:
Übertragung: Thread


#### Mini Station:

Misst alle Daten in einem Standard Indoor Raum

Gewollte Messung:
- Temperatur
- Luftfeuchtigkeit
- CO2 Gehalt
- Luftdruck
- Helligkeit (Photowiderstand)

##### Funk:
Übertragung: Thread

#### Daten Station (HUB)
Schittstelle zu unserer Datenbank und ins Local Area Network zur überwachung der Daten

- SD Karten speicherung
- Lan anstatt Wlan
- Lan Driver
- Power über POE
- Überträgt alle Messdaten der letzen seit dem Letzten Timestamp der Datenbank einmalig pro Tag auf unseren MySQL Server. (Welche möglichkeit bzw. Daten auf mehrere Server senden)
    - Server Jan:
        - Im Falle eines Ausfall -> Selbständige Lösung, jedoch Auafall wahrscheinlichkeit höher
        - Gefahr das Daten beschädigt werden / Gelöscht
        - Komplette Administration aller Daten und des Ganzen Systems
        - Individuelle Leistung und weiterleitung (DNS)

    - Schul SQL Datenbank:
        - Keine Informationen über Systemabschaltungen (Wartungs arbeiten, Sommerferien)
        - Keine Informationen von Dauer der Daten speicherung
        - Auf System Administrator angewießen
        - Keine Leistungs bestimmung
        - Kein Eingriff ins Netzwerk
    
    - Externe SQL Server Anbieter:
        - Teuer -> Lohnt sich bei dieser Art von Projekt
        - Hohe Ausfahl Sicherheit
        - Fast keine Gefahr das Daten beschädigt werden
        - Teils auf Support angewießen.
        - Je besser die Hardware desto Teurer pro Monat wobei der Server der selbe bleibt.
        - Netzwerk Limitierungen (Aufpreise)
        - Kann von Datenlacks betroffen sein.

#### Stromversorgung für ALLE STATIONEN:
- USB C 5V -> 3,3V Step-down Converter

## Liste der Sachen für das Projekt:

### ESP's

- Router-CPU: ESP32-S3 -> Externe Antenne -> schlecht, Bessere Reichweiten Kontrolle
- Router-Thread: ESP32-H2 -> Externe Antenne -> schlecht, Bessere Reichweiten Kontrolle
- Devices: ESP32-C6 -> Externe Antenne -> schlecht, Bessere Reichweiten Kontrolle

Externe Antenne:
    https://www.mouser.at/ProductDetail/Johanson-Technology/2450AT14A0100Tqs=YCa%2FAAYMW01CU618jkZ%252BCw%3D%3D&mgh=1&vip=1&utm_id=20600977424&gad_source=1&gbraid=0AAAAADn_wf00rwxBxZh_pgnh98nrY0sxW&gclid=Cj0KCQiAhbi8BhDIARIsAJLOluei9X01ipJ_uM1vxHrcQh4ZCm8I1i5n9sgfB7ooxuq3XKT6M_dWeCkaAr6xEALw_wcB


### Sensor List:


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