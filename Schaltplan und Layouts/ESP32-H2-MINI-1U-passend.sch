<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ESP32-H2-MINI-1U-passend">
<description>&lt;Multiprotocol Modules ENGINEERING SAMPLE Bluetooth Low Energy and IEEE 802.15.4  module with ESP32-H2 chip&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="ESP32H2MINI1N2">
<description>&lt;b&gt;ESP32-H2-MINI-1-N2-1&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-5.9" y="1.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="2" x="-5.9" y="0.5" dx="0.8" dy="0.4" layer="1"/>
<smd name="3" x="-5.9" y="-0.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="4" x="-5.9" y="-1.1" dx="0.8" dy="0.4" layer="1"/>
<smd name="5" x="-5.9" y="-1.9" dx="0.8" dy="0.4" layer="1"/>
<smd name="6" x="-5.9" y="-2.7" dx="0.8" dy="0.4" layer="1"/>
<smd name="7" x="-5.9" y="-3.5" dx="0.8" dy="0.4" layer="1"/>
<smd name="8" x="-5.9" y="-4.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="9" x="-5.9" y="-5.1" dx="0.8" dy="0.4" layer="1"/>
<smd name="10" x="-5.9" y="-5.9" dx="0.8" dy="0.4" layer="1"/>
<smd name="11" x="-5.9" y="-6.7" dx="0.8" dy="0.4" layer="1"/>
<smd name="12" x="-4.8" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="13" x="-4" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="14" x="-3.2" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="15" x="-2.4" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="16" x="-1.6" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="17" x="-0.8" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="18" x="0" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="19" x="0.8" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="20" x="1.6" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="21" x="2.4" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="22" x="3.2" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="23" x="4" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="24" x="4.8" y="-7.6" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="25" x="5.9" y="-6.7" dx="0.8" dy="0.4" layer="1"/>
<smd name="26" x="5.9" y="-5.9" dx="0.8" dy="0.4" layer="1"/>
<smd name="27" x="5.9" y="-5.1" dx="0.8" dy="0.4" layer="1"/>
<smd name="28" x="5.9" y="-4.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="29" x="5.9" y="-3.5" dx="0.8" dy="0.4" layer="1"/>
<smd name="30" x="5.9" y="-2.7" dx="0.8" dy="0.4" layer="1"/>
<smd name="31" x="5.9" y="-1.9" dx="0.8" dy="0.4" layer="1"/>
<smd name="32" x="5.9" y="-1.1" dx="0.8" dy="0.4" layer="1"/>
<smd name="33" x="5.9" y="-0.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="34" x="5.9" y="0.5" dx="0.8" dy="0.4" layer="1"/>
<smd name="35" x="5.9" y="1.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="36" x="4.8" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="37" x="4" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="38" x="3.2" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="39" x="2.4" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="40" x="1.6" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="41" x="0.8" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="42" x="0" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="43" x="-0.8" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="44" x="-1.6" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="45" x="-2.4" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="46" x="-3.2" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="47" x="-4" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="48" x="-4.8" y="2.2" dx="0.8" dy="0.4" layer="1" rot="R90"/>
<smd name="49" x="0" y="-2.7" dx="1.45" dy="1.45" layer="1"/>
<smd name="50" x="5.95" y="2.25" dx="0.7" dy="0.7" layer="1"/>
<smd name="51" x="5.95" y="-7.65" dx="0.7" dy="0.7" layer="1"/>
<smd name="52" x="-5.95" y="-7.65" dx="0.7" dy="0.7" layer="1"/>
<smd name="53" x="-5.95" y="2.25" dx="0.7" dy="0.7" layer="1"/>
<smd name="54" x="-1.975" y="-0.725" dx="1.45" dy="1.45" layer="1"/>
<smd name="55" x="-1.975" y="-2.7" dx="1.45" dy="1.45" layer="1"/>
<smd name="56" x="-1.975" y="-4.675" dx="1.45" dy="1.45" layer="1"/>
<smd name="57" x="0" y="-4.675" dx="1.45" dy="1.45" layer="1"/>
<smd name="58" x="1.975" y="-4.675" dx="1.45" dy="1.45" layer="1"/>
<smd name="59" x="1.975" y="-2.7" dx="1.45" dy="1.45" layer="1"/>
<smd name="60" x="1.975" y="-0.725" dx="1.45" dy="1.45" layer="1"/>
<smd name="61" x="0" y="-0.725" dx="1.45" dy="1.45" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-6.6" y1="-8.3" x2="6.6" y2="-8.3" width="0.1" layer="51"/>
<wire x1="6.6" y1="-8.3" x2="6.6" y2="3.22" width="0.1" layer="51"/>
<wire x1="6.6" y1="3.22" x2="-6.6" y2="3.22" width="0.1" layer="51"/>
<wire x1="-6.6" y1="3.22" x2="-6.6" y2="-8.3" width="0.1" layer="51"/>
<wire x1="-7.6" y1="4.22" x2="7.6" y2="4.22" width="0.1" layer="51"/>
<wire x1="7.6" y1="4.22" x2="7.6" y2="-9.3" width="0.1" layer="51"/>
<wire x1="7.6" y1="-9.3" x2="-7.6" y2="-9.3" width="0.1" layer="51"/>
<wire x1="-7.6" y1="-9.3" x2="-7.6" y2="4.22" width="0.1" layer="51"/>
<wire x1="-6.6" y1="3.22" x2="6.6" y2="3.22" width="0.2" layer="21"/>
<wire x1="6.6" y1="3.22" x2="6.6" y2="-8.3" width="0.2" layer="21"/>
<wire x1="6.6" y1="-8.3" x2="-6.6" y2="-8.3" width="0.2" layer="21"/>
<wire x1="-6.6" y1="-8.3" x2="-6.6" y2="3.22" width="0.2" layer="21"/>
<wire x1="-7.1" y1="1.3" x2="-7.2" y2="1.3" width="0.1" layer="21" curve="180"/>
<wire x1="-7.2" y1="1.3" x2="-7.1" y2="1.3" width="0.1" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="ESP32-H2-MINI-1-N2">
<wire x1="5.08" y1="2.54" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-78.74" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-78.74" x2="5.08" y2="-78.74" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-78.74" width="0.254" layer="94"/>
<text x="29.21" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="29.21" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="GND_1" x="0" y="0" length="middle"/>
<pin name="GND_2" x="0" y="-2.54" length="middle"/>
<pin name="3V3" x="0" y="-5.08" length="middle"/>
<pin name="NC_1" x="0" y="-7.62" length="middle"/>
<pin name="IO2" x="0" y="-10.16" length="middle"/>
<pin name="IO3" x="0" y="-12.7" length="middle"/>
<pin name="NC_2" x="0" y="-15.24" length="middle"/>
<pin name="EN" x="0" y="-17.78" length="middle"/>
<pin name="IO0" x="0" y="-20.32" length="middle"/>
<pin name="IO1" x="0" y="-22.86" length="middle"/>
<pin name="GND_3" x="0" y="-25.4" length="middle"/>
<pin name="IO13" x="0" y="-27.94" length="middle"/>
<pin name="IO14" x="0" y="-30.48" length="middle"/>
<pin name="GND_4" x="0" y="-33.02" length="middle"/>
<pin name="VBAT" x="0" y="-35.56" length="middle"/>
<pin name="IO12" x="0" y="-38.1" length="middle"/>
<pin name="NC_3" x="0" y="-40.64" length="middle"/>
<pin name="IO4" x="0" y="-43.18" length="middle"/>
<pin name="IO5" x="0" y="-45.72" length="middle"/>
<pin name="IO10" x="0" y="-48.26" length="middle"/>
<pin name="IO11" x="0" y="-50.8" length="middle"/>
<pin name="IO8" x="0" y="-53.34" length="middle"/>
<pin name="IO9" x="0" y="-55.88" length="middle"/>
<pin name="IO22" x="0" y="-58.42" length="middle"/>
<pin name="IO25" x="0" y="-60.96" length="middle"/>
<pin name="IO26" x="0" y="-63.5" length="middle"/>
<pin name="IO27" x="0" y="-66.04" length="middle"/>
<pin name="NC_4" x="0" y="-68.58" length="middle"/>
<pin name="NC_5" x="0" y="-71.12" length="middle"/>
<pin name="RXD0" x="0" y="-73.66" length="middle"/>
<pin name="TXD0" x="0" y="-76.2" length="middle"/>
<pin name="NC_6" x="33.02" y="0" length="middle" rot="R180"/>
<pin name="NC_7" x="33.02" y="-2.54" length="middle" rot="R180"/>
<pin name="NC_8" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="NC_9" x="33.02" y="-7.62" length="middle" rot="R180"/>
<pin name="GND_5" x="33.02" y="-10.16" length="middle" rot="R180"/>
<pin name="GND_6" x="33.02" y="-12.7" length="middle" rot="R180"/>
<pin name="GND_7" x="33.02" y="-15.24" length="middle" rot="R180"/>
<pin name="GND_8" x="33.02" y="-17.78" length="middle" rot="R180"/>
<pin name="GND_9" x="33.02" y="-20.32" length="middle" rot="R180"/>
<pin name="GND_10" x="33.02" y="-22.86" length="middle" rot="R180"/>
<pin name="GND_11" x="33.02" y="-25.4" length="middle" rot="R180"/>
<pin name="GND_12" x="33.02" y="-27.94" length="middle" rot="R180"/>
<pin name="GND_13" x="33.02" y="-30.48" length="middle" rot="R180"/>
<pin name="GND_14" x="33.02" y="-33.02" length="middle" rot="R180"/>
<pin name="GND_15" x="33.02" y="-35.56" length="middle" rot="R180"/>
<pin name="GND_16" x="33.02" y="-38.1" length="middle" rot="R180"/>
<pin name="GND_17" x="33.02" y="-40.64" length="middle" rot="R180"/>
<pin name="GND_18" x="33.02" y="-43.18" length="middle" rot="R180"/>
<pin name="GND_19" x="33.02" y="-45.72" length="middle" rot="R180"/>
<pin name="GND_20" x="33.02" y="-48.26" length="middle" rot="R180"/>
<pin name="GND_21" x="33.02" y="-50.8" length="middle" rot="R180"/>
<pin name="GND_22" x="33.02" y="-53.34" length="middle" rot="R180"/>
<pin name="GND_23" x="33.02" y="-55.88" length="middle" rot="R180"/>
<pin name="GND_24" x="33.02" y="-58.42" length="middle" rot="R180"/>
<pin name="GND_25" x="33.02" y="-60.96" length="middle" rot="R180"/>
<pin name="GND_26" x="33.02" y="-63.5" length="middle" rot="R180"/>
<pin name="GND_27" x="33.02" y="-66.04" length="middle" rot="R180"/>
<pin name="GND_28" x="33.02" y="-68.58" length="middle" rot="R180"/>
<pin name="GND_29" x="33.02" y="-71.12" length="middle" rot="R180"/>
<pin name="GND_30" x="33.02" y="-73.66" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-H2-MINI-1-N2" prefix="IC">
<description>&lt;b&gt;Multiprotocol Modules ENGINEERING SAMPLE Bluetooth Low Energy and IEEE 802.15.4  module with ESP32-H2 chip&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.espressif.com/sites/default/files/documentation/esp32-h2-mini-1_mini-1u_datasheet_en.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ESP32-H2-MINI-1-N2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESP32H2MINI1N2">
<connects>
<connect gate="G$1" pin="3V3" pad="3"/>
<connect gate="G$1" pin="EN" pad="8"/>
<connect gate="G$1" pin="GND_1" pad="1"/>
<connect gate="G$1" pin="GND_10" pad="41"/>
<connect gate="G$1" pin="GND_11" pad="42"/>
<connect gate="G$1" pin="GND_12" pad="43"/>
<connect gate="G$1" pin="GND_13" pad="44"/>
<connect gate="G$1" pin="GND_14" pad="45"/>
<connect gate="G$1" pin="GND_15" pad="46"/>
<connect gate="G$1" pin="GND_16" pad="47"/>
<connect gate="G$1" pin="GND_17" pad="48"/>
<connect gate="G$1" pin="GND_18" pad="49"/>
<connect gate="G$1" pin="GND_19" pad="50"/>
<connect gate="G$1" pin="GND_2" pad="2"/>
<connect gate="G$1" pin="GND_20" pad="51"/>
<connect gate="G$1" pin="GND_21" pad="52"/>
<connect gate="G$1" pin="GND_22" pad="53"/>
<connect gate="G$1" pin="GND_23" pad="54"/>
<connect gate="G$1" pin="GND_24" pad="55"/>
<connect gate="G$1" pin="GND_25" pad="56"/>
<connect gate="G$1" pin="GND_26" pad="57"/>
<connect gate="G$1" pin="GND_27" pad="58"/>
<connect gate="G$1" pin="GND_28" pad="59"/>
<connect gate="G$1" pin="GND_29" pad="60"/>
<connect gate="G$1" pin="GND_3" pad="11"/>
<connect gate="G$1" pin="GND_30" pad="61"/>
<connect gate="G$1" pin="GND_4" pad="14"/>
<connect gate="G$1" pin="GND_5" pad="36"/>
<connect gate="G$1" pin="GND_6" pad="37"/>
<connect gate="G$1" pin="GND_7" pad="38"/>
<connect gate="G$1" pin="GND_8" pad="39"/>
<connect gate="G$1" pin="GND_9" pad="40"/>
<connect gate="G$1" pin="IO0" pad="9"/>
<connect gate="G$1" pin="IO1" pad="10"/>
<connect gate="G$1" pin="IO10" pad="20"/>
<connect gate="G$1" pin="IO11" pad="21"/>
<connect gate="G$1" pin="IO12" pad="16"/>
<connect gate="G$1" pin="IO13" pad="12"/>
<connect gate="G$1" pin="IO14" pad="13"/>
<connect gate="G$1" pin="IO2" pad="5"/>
<connect gate="G$1" pin="IO22" pad="24"/>
<connect gate="G$1" pin="IO25" pad="25"/>
<connect gate="G$1" pin="IO26" pad="26"/>
<connect gate="G$1" pin="IO27" pad="27"/>
<connect gate="G$1" pin="IO3" pad="6"/>
<connect gate="G$1" pin="IO4" pad="18"/>
<connect gate="G$1" pin="IO5" pad="19"/>
<connect gate="G$1" pin="IO8" pad="22"/>
<connect gate="G$1" pin="IO9" pad="23"/>
<connect gate="G$1" pin="NC_1" pad="4"/>
<connect gate="G$1" pin="NC_2" pad="7"/>
<connect gate="G$1" pin="NC_3" pad="17"/>
<connect gate="G$1" pin="NC_4" pad="28"/>
<connect gate="G$1" pin="NC_5" pad="29"/>
<connect gate="G$1" pin="NC_6" pad="32"/>
<connect gate="G$1" pin="NC_7" pad="33"/>
<connect gate="G$1" pin="NC_8" pad="34"/>
<connect gate="G$1" pin="NC_9" pad="35"/>
<connect gate="G$1" pin="RXD0" pad="30"/>
<connect gate="G$1" pin="TXD0" pad="31"/>
<connect gate="G$1" pin="VBAT" pad="15"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Multiprotocol Modules ENGINEERING SAMPLE Bluetooth Low Energy and IEEE 802.15.4  module with ESP32-H2 chip" constant="no"/>
<attribute name="HEIGHT" value="2.55mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Espressif Systems" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ESP32-H2-MINI-1-N2" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="356-ESP32H2MINI1-N2" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Espressif-Systems/ESP32-H2-MINI-1-N2?qs=Jm2GQyTW%2FbhDEK4sfiNMsw%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26990/1" library_version="2">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:27037/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="ESP32-H2-MINI-1U-passend" deviceset="ESP32-H2-MINI-1-N2" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="43.18" y="81.28" smashed="yes">
<attribute name="NAME" x="72.39" y="88.9" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="72.39" y="86.36" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY1" gate="GND" x="76.2" y="5.08" smashed="yes">
<attribute name="VALUE" x="74.295" y="1.905" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY2" gate="GND" x="17.78" y="45.72" smashed="yes">
<attribute name="VALUE" x="15.875" y="42.545" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND_30"/>
<pinref part="IC1" gate="G$1" pin="GND_5"/>
<wire x1="76.2" y1="7.62" x2="76.2" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND_6"/>
<wire x1="76.2" y1="10.16" x2="76.2" y2="12.7" width="0.1524" layer="91"/>
<wire x1="76.2" y1="12.7" x2="76.2" y2="15.24" width="0.1524" layer="91"/>
<wire x1="76.2" y1="15.24" x2="76.2" y2="17.78" width="0.1524" layer="91"/>
<wire x1="76.2" y1="17.78" x2="76.2" y2="20.32" width="0.1524" layer="91"/>
<wire x1="76.2" y1="20.32" x2="76.2" y2="22.86" width="0.1524" layer="91"/>
<wire x1="76.2" y1="22.86" x2="76.2" y2="25.4" width="0.1524" layer="91"/>
<wire x1="76.2" y1="25.4" x2="76.2" y2="27.94" width="0.1524" layer="91"/>
<wire x1="76.2" y1="27.94" x2="76.2" y2="30.48" width="0.1524" layer="91"/>
<wire x1="76.2" y1="30.48" x2="76.2" y2="33.02" width="0.1524" layer="91"/>
<wire x1="76.2" y1="33.02" x2="76.2" y2="35.56" width="0.1524" layer="91"/>
<wire x1="76.2" y1="35.56" x2="76.2" y2="38.1" width="0.1524" layer="91"/>
<wire x1="76.2" y1="38.1" x2="76.2" y2="40.64" width="0.1524" layer="91"/>
<wire x1="76.2" y1="40.64" x2="76.2" y2="43.18" width="0.1524" layer="91"/>
<wire x1="76.2" y1="43.18" x2="76.2" y2="45.72" width="0.1524" layer="91"/>
<wire x1="76.2" y1="45.72" x2="76.2" y2="48.26" width="0.1524" layer="91"/>
<wire x1="76.2" y1="48.26" x2="76.2" y2="50.8" width="0.1524" layer="91"/>
<wire x1="76.2" y1="50.8" x2="76.2" y2="53.34" width="0.1524" layer="91"/>
<wire x1="76.2" y1="53.34" x2="76.2" y2="55.88" width="0.1524" layer="91"/>
<wire x1="76.2" y1="55.88" x2="76.2" y2="58.42" width="0.1524" layer="91"/>
<wire x1="76.2" y1="58.42" x2="76.2" y2="60.96" width="0.1524" layer="91"/>
<wire x1="76.2" y1="60.96" x2="76.2" y2="63.5" width="0.1524" layer="91"/>
<wire x1="76.2" y1="63.5" x2="76.2" y2="66.04" width="0.1524" layer="91"/>
<wire x1="76.2" y1="66.04" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<wire x1="76.2" y1="68.58" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
<junction x="76.2" y="68.58"/>
<pinref part="IC1" gate="G$1" pin="GND_7"/>
<junction x="76.2" y="66.04"/>
<pinref part="IC1" gate="G$1" pin="GND_8"/>
<junction x="76.2" y="63.5"/>
<pinref part="IC1" gate="G$1" pin="GND_9"/>
<junction x="76.2" y="60.96"/>
<pinref part="IC1" gate="G$1" pin="GND_10"/>
<junction x="76.2" y="58.42"/>
<pinref part="IC1" gate="G$1" pin="GND_11"/>
<junction x="76.2" y="55.88"/>
<pinref part="IC1" gate="G$1" pin="GND_12"/>
<junction x="76.2" y="53.34"/>
<pinref part="IC1" gate="G$1" pin="GND_13"/>
<junction x="76.2" y="50.8"/>
<pinref part="IC1" gate="G$1" pin="GND_14"/>
<junction x="76.2" y="48.26"/>
<pinref part="IC1" gate="G$1" pin="GND_15"/>
<junction x="76.2" y="45.72"/>
<pinref part="IC1" gate="G$1" pin="GND_16"/>
<junction x="76.2" y="43.18"/>
<pinref part="IC1" gate="G$1" pin="GND_17"/>
<junction x="76.2" y="40.64"/>
<pinref part="IC1" gate="G$1" pin="GND_18"/>
<junction x="76.2" y="38.1"/>
<pinref part="IC1" gate="G$1" pin="GND_19"/>
<junction x="76.2" y="35.56"/>
<pinref part="IC1" gate="G$1" pin="GND_20"/>
<junction x="76.2" y="33.02"/>
<pinref part="IC1" gate="G$1" pin="GND_21"/>
<junction x="76.2" y="30.48"/>
<pinref part="IC1" gate="G$1" pin="GND_22"/>
<junction x="76.2" y="27.94"/>
<pinref part="IC1" gate="G$1" pin="GND_23"/>
<junction x="76.2" y="25.4"/>
<pinref part="IC1" gate="G$1" pin="GND_24"/>
<junction x="76.2" y="22.86"/>
<pinref part="IC1" gate="G$1" pin="GND_25"/>
<junction x="76.2" y="20.32"/>
<pinref part="IC1" gate="G$1" pin="GND_26"/>
<junction x="76.2" y="17.78"/>
<pinref part="IC1" gate="G$1" pin="GND_27"/>
<junction x="76.2" y="15.24"/>
<pinref part="IC1" gate="G$1" pin="GND_28"/>
<junction x="76.2" y="12.7"/>
<pinref part="IC1" gate="G$1" pin="GND_29"/>
<junction x="76.2" y="10.16"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<junction x="76.2" y="7.62"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND_1"/>
<pinref part="IC1" gate="G$1" pin="GND_2"/>
<wire x1="43.18" y1="81.28" x2="43.18" y2="78.74" width="0.1524" layer="91"/>
<wire x1="43.18" y1="78.74" x2="43.18" y2="76.2" width="0.1524" layer="91"/>
<wire x1="43.18" y1="76.2" x2="17.78" y2="76.2" width="0.1524" layer="91"/>
<junction x="43.18" y="78.74"/>
<pinref part="IC1" gate="G$1" pin="GND_3"/>
<wire x1="43.18" y1="55.88" x2="17.78" y2="55.88" width="0.1524" layer="91"/>
<wire x1="17.78" y1="55.88" x2="17.78" y2="48.26" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND_4"/>
<wire x1="17.78" y1="48.26" x2="43.18" y2="48.26" width="0.1524" layer="91"/>
<wire x1="17.78" y1="76.2" x2="17.78" y2="55.88" width="0.1524" layer="91"/>
<junction x="17.78" y="55.88"/>
<pinref part="IC1" gate="G$1" pin="3V3"/>
<junction x="43.18" y="76.2"/>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<junction x="17.78" y="48.26"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
