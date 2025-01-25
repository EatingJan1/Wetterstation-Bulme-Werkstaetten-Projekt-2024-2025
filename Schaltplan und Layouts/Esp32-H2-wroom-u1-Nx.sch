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
<library name="ESP32-H2-MINI-1-H2-Pinbelegung-richtig">
<packages>
<package name="MODULE_ESP32-H2-MINI-1-H2">
<polygon width="0.01" layer="1">
<vertex x="-2.7" y="-1.45"/>
<vertex x="-1.25" y="-1.45"/>
<vertex x="-1.25" y="0"/>
<vertex x="-2.1" y="0"/>
<vertex x="-2.7" y="-0.6"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-2.8" y="-1.55"/>
<vertex x="-1.15" y="-1.55"/>
<vertex x="-1.15" y="0.1"/>
<vertex x="-2.15" y="0.1"/>
<vertex x="-2.8" y="-0.55"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-2.7" y="-0.6"/>
<vertex x="-2.7" y="-1.45"/>
<vertex x="-1.25" y="-1.45"/>
<vertex x="-1.25" y="0"/>
<vertex x="-2.1" y="0"/>
</polygon>
<wire x1="-6.6" y1="2.9" x2="-6.6" y2="-8.3" width="0.127" layer="51"/>
<wire x1="-6.6" y1="-8.3" x2="6.6" y2="-8.3" width="0.127" layer="51"/>
<wire x1="6.6" y1="-8.3" x2="6.6" y2="2.9" width="0.127" layer="51"/>
<wire x1="-6.6" y1="2.9" x2="6.6" y2="2.9" width="0.127" layer="51"/>
<wire x1="-6.85" y1="3.1525" x2="-6.85" y2="-8.55" width="0.05" layer="39"/>
<wire x1="-6.85" y1="-8.55" x2="6.85" y2="-8.55" width="0.05" layer="39"/>
<wire x1="6.85" y1="-8.55" x2="6.85" y2="3.1525" width="0.05" layer="39"/>
<wire x1="6.85" y1="3.1525" x2="-6.85" y2="3.1525" width="0.05" layer="39"/>
<circle x="-7.35" y="1.3" radius="0.1" width="0.2" layer="21"/>
<circle x="-7.35" y="1.3" radius="0.1" width="0.2" layer="51"/>
<text x="-6.75" y="-10.07" size="0.4064" layer="25">&gt;NAME</text>
<text x="-6.75" y="-10.34" size="0.4064" layer="27" align="top-left">&gt;VALUE</text>
<text x="7.1" y="3.1" size="0.4064" layer="51">PCB Edge</text>
<wire x1="-6.65" y1="2.9" x2="-6.65" y2="-8.35" width="0.127" layer="21"/>
<wire x1="-6.65" y1="-8.35" x2="6.65" y2="-8.35" width="0.127" layer="21"/>
<wire x1="6.65" y1="-8.35" x2="6.65" y2="2.9" width="0.127" layer="21"/>
<smd name="GND" x="-5.9" y="1.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="GND@1" x="-5.9" y="0.5" dx="0.8" dy="0.4" layer="1"/>
<smd name="3V3" x="-5.9" y="-0.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="NC" x="-5.9" y="-1.1" dx="0.8" dy="0.4" layer="1"/>
<smd name="IO2" x="-5.9" y="-1.9" dx="0.8" dy="0.4" layer="1"/>
<smd name="IO3" x="-5.9" y="-2.7" dx="0.8" dy="0.4" layer="1"/>
<smd name="NC@1" x="-5.9" y="-3.5" dx="0.8" dy="0.4" layer="1"/>
<smd name="EN" x="-5.9" y="-4.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="IO0" x="-5.9" y="-5.1" dx="0.8" dy="0.4" layer="1"/>
<smd name="IO1" x="-5.9" y="-5.9" dx="0.8" dy="0.4" layer="1"/>
<smd name="GND@2" x="-5.9" y="-6.7" dx="0.8" dy="0.4" layer="1"/>
<smd name="IO13" x="-4.8" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="IO14" x="-4" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@3" x="-3.2" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="VBAT" x="-2.4" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="IO12" x="-1.6" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="NC@2" x="-0.8" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="IO4" x="0" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="IO5" x="0.8" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="IO10" x="1.6" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="IO11" x="2.4" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="IO8" x="3.2" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="IO9" x="4" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="IO22" x="4.8" y="-7.6" dx="0.4" dy="0.8" layer="1"/>
<smd name="IO25" x="5.9" y="-6.7" dx="0.8" dy="0.4" layer="1"/>
<smd name="IO26" x="5.9" y="-5.9" dx="0.8" dy="0.4" layer="1"/>
<smd name="IO27" x="5.9" y="-5.1" dx="0.8" dy="0.4" layer="1"/>
<smd name="NC@4" x="5.9" y="-4.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="NC@5" x="5.9" y="-3.5" dx="0.8" dy="0.4" layer="1"/>
<smd name="RXD0" x="5.9" y="-2.7" dx="0.8" dy="0.4" layer="1"/>
<smd name="TXD0" x="5.9" y="-1.9" dx="0.8" dy="0.4" layer="1"/>
<smd name="NC@6" x="5.9" y="-1.1" dx="0.8" dy="0.4" layer="1"/>
<smd name="NC@7" x="5.9" y="-0.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="NC@8" x="5.9" y="0.5" dx="0.8" dy="0.4" layer="1"/>
<smd name="NC@9" x="5.9" y="1.3" dx="0.8" dy="0.4" layer="1"/>
<smd name="GND@16" x="-4.8" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@15" x="-4" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@14" x="-3.2" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND113" x="-2.4" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@12" x="-1.6" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@11" x="-0.8" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@10" x="0" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@9" x="0.8" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@8" x="1.6" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@7" x="2.4" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@6" x="3.2" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@5" x="4" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@4" x="4.8" y="2.2" dx="0.4" dy="0.8" layer="1"/>
<smd name="GND@53" x="-5.95" y="2.25" dx="0.7" dy="0.7" layer="1"/>
<smd name="GND@52" x="-5.95" y="-7.65" dx="0.7" dy="0.7" layer="1"/>
<smd name="GND@51" x="5.95" y="-7.65" dx="0.7" dy="0.7" layer="1"/>
<smd name="GND@50" x="5.95" y="2.25" dx="0.7" dy="0.7" layer="1"/>
<smd name="GND96" x="0" y="-2.7" dx="1.45" dy="1.45" layer="1"/>
<smd name="GND@98" x="1.975" y="-0.725" dx="1.45" dy="1.45" layer="1"/>
<smd name="GND@95" x="1.975" y="-2.7" dx="1.45" dy="1.45" layer="1"/>
<smd name="GND@94" x="1.975" y="-4.675" dx="1.45" dy="1.45" layer="1"/>
<smd name="GND@93" x="0" y="-4.675" dx="1.45" dy="1.45" layer="1"/>
<smd name="GND92" x="-1.975" y="-4.675" dx="1.45" dy="1.45" layer="1"/>
<smd name="GND@97" x="-1.975" y="-2.7" dx="1.45" dy="1.45" layer="1"/>
<smd name="GND@100" x="-1.975" y="-0.725" dx="0.5" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="GND@99" x="0" y="-0.725" dx="1.45" dy="1.45" layer="1"/>
<pad name="GND@54/VIA1" x="-0.9875" y="-0.725" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@55/VIA2" x="0.9875" y="-0.725" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@56/VIA3" x="-1.975" y="-1.7125" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@57/VIA4" x="0" y="-1.7125" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@58/VIA5" x="1.975" y="-1.7125" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@59/VIA6" x="-0.9875" y="-2.7" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@60/VIA7" x="0.9875" y="-2.7" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@61/VIA8" x="-1.975" y="-3.6875" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@61/VIA9" x="0" y="-3.6875" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@63/VIA10" x="1.975" y="-3.6875" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@64/VIA11" x="-0.9875" y="-4.675" drill="0.2" diameter="0.3" stop="no"/>
<pad name="GND@64/VIA12" x="0.9875" y="-4.675" drill="0.2" diameter="0.3" stop="no"/>
<wire x1="-6.6675" y1="2.8575" x2="-6.6675" y2="3.01625" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ESP32-H2-MINI-1-H2">
<wire x1="-10.16" y1="22.86" x2="10.16" y2="22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="22.86" x2="10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="-22.86" x2="-10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="-10.16" y2="22.86" width="0.254" layer="94"/>
<text x="-10.16" y="23.622" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND_1" x="15.24" y="-17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="GND_2" x="15.24" y="-20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="NC" x="-15.24" y="-17.78" length="middle" direction="nc"/>
<pin name="3V3" x="15.24" y="20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="IO2" x="-15.24" y="-5.08" length="middle"/>
<pin name="IO3" x="-15.24" y="-7.62" length="middle"/>
<pin name="IO0" x="-15.24" y="0" length="middle"/>
<pin name="EN" x="-15.24" y="12.7" length="middle" direction="in"/>
<pin name="IO1" x="-15.24" y="-2.54" length="middle"/>
<pin name="IO13" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="IO14" x="15.24" y="-2.54" length="middle" rot="R180"/>
<pin name="VBAT" x="15.24" y="17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="IO12" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="IO4" x="-15.24" y="-10.16" length="middle"/>
<pin name="IO5" x="-15.24" y="-12.7" length="middle"/>
<pin name="IO10" x="15.24" y="7.62" length="middle" rot="R180"/>
<pin name="IO11" x="15.24" y="5.08" length="middle" rot="R180"/>
<pin name="IO8" x="15.24" y="12.7" length="middle" rot="R180"/>
<pin name="IO9" x="15.24" y="10.16" length="middle" rot="R180"/>
<pin name="IO22" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="IO25" x="15.24" y="-7.62" length="middle" rot="R180"/>
<pin name="IO26" x="15.24" y="-10.16" length="middle" rot="R180"/>
<pin name="IO27" x="15.24" y="-12.7" length="middle" rot="R180"/>
<pin name="RXD0" x="-15.24" y="5.08" length="middle"/>
<pin name="TXD0" x="-15.24" y="7.62" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-H2-MINI-1-H2" prefix="U">
<description> &lt;a href="https://pricing.snapeda.com/parts/ESP32-H2-MINI-1-H2/Espressif%20Systems/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ESP32-H2-MINI-1-H2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_ESP32-H2-MINI-1-H2">
<connects>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="GND_1" pad="GND GND113 GND@1 GND@2 GND@3 GND@4 GND@5 GND@6 GND@7 GND@8 GND@9 GND@10 GND@11 GND@12 GND@14"/>
<connect gate="G$1" pin="GND_2" pad="GND92 GND96 GND@15 GND@16 GND@50 GND@51 GND@52 GND@53 GND@93 GND@94 GND@95 GND@97 GND@98 GND@99 GND@100"/>
<connect gate="G$1" pin="IO0" pad="IO0"/>
<connect gate="G$1" pin="IO1" pad="IO1"/>
<connect gate="G$1" pin="IO10" pad="IO10"/>
<connect gate="G$1" pin="IO11" pad="IO11"/>
<connect gate="G$1" pin="IO12" pad="IO12"/>
<connect gate="G$1" pin="IO13" pad="IO13"/>
<connect gate="G$1" pin="IO14" pad="IO14"/>
<connect gate="G$1" pin="IO2" pad="IO2"/>
<connect gate="G$1" pin="IO22" pad="IO22"/>
<connect gate="G$1" pin="IO25" pad="IO25"/>
<connect gate="G$1" pin="IO26" pad="IO26"/>
<connect gate="G$1" pin="IO27" pad="IO27"/>
<connect gate="G$1" pin="IO3" pad="IO3"/>
<connect gate="G$1" pin="IO4" pad="IO4"/>
<connect gate="G$1" pin="IO5" pad="IO5"/>
<connect gate="G$1" pin="IO8" pad="IO8"/>
<connect gate="G$1" pin="IO9" pad="IO9"/>
<connect gate="G$1" pin="NC" pad="NC NC@1 NC@2 NC@4 NC@5 NC@6 NC@7 NC@8 NC@9"/>
<connect gate="G$1" pin="RXD0" pad="RXD0"/>
<connect gate="G$1" pin="TXD0" pad="TXD0"/>
<connect gate="G$1" pin="VBAT" pad="VBAT"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="CHECK_PRICES" value="https://www.snapeda.com/parts/ESP32-H2-MINI-1-H2/Espressif+Systems/view-part/?ref=eda"/>
<attribute name="DESCRIPTION" value="                                                      802.15.4, Bluetooth Bluetooth v5.3, Zigbee® Transceiver Module 2.4GHz Integrated, Trace Surface Mount                                              "/>
<attribute name="MF" value="Espressif Systems"/>
<attribute name="MP" value="ESP32-H2-MINI-1-H2"/>
<attribute name="PACKAGE" value="SMD-53 Espressif Systems"/>
<attribute name="PRICE" value="None"/>
<attribute name="SNAPEDA_LINK" value="https://www.snapeda.com/parts/ESP32-H2-MINI-1-H2/Espressif+Systems/view-part/?ref=snap"/>
</technology>
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
<part name="U1" library="ESP32-H2-MINI-1-H2-Pinbelegung-richtig" deviceset="ESP32-H2-MINI-1-H2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="-2.54" y="35.56" smashed="yes">
<attribute name="NAME" x="-12.7" y="59.182" size="1.778" layer="95"/>
<attribute name="VALUE" x="-12.7" y="10.16" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="GND_1"/>
<pinref part="U1" gate="G$1" pin="GND_2"/>
<wire x1="12.7" y1="17.78" x2="12.7" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
