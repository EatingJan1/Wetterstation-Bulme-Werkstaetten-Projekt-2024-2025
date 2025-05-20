# Custom Partition Tables on ESP32 (PlatformIO)

Why Use Custom Partitions?

The default partition table on the ESP32 is suitable for simple projects, but many applications need a different memory layout. Here are some reasons why you might want to use a custom partition table:

* Larger SPIFFS or LittleFS Storage: Need more space for files? Increase the size of your file system partition.
* Multiple App Partitions: For over-the-air (OTA) updates or fallback firmware.
* NVS Tweaks: Allocate more room for non-volatile storage (NVS).
* Custom Data Sections: Store configuration data, logs, or calibration values in dedicated partitions.
* PSRAM Optimization: Match partitioning to specific PSRAM setups.
Custom partitioning helps you get the most out of your flash memory depending on your application’s needs.

Update platformio.ini to Use the Custom Partition
Add or modify the board_build.partitions option:


## Update `platformio.ini` to Use the Custom Partition Table

To tell PlatformIO to use your custom partition layout, open your `platformio.ini` file and add or modify the following line:

```ini
board_build.partitions = partitions/partitions.csv
[env:esp32dev]
platform = espressif32
board = esp32dev
framework = arduino

;Use a custom partition layout
board_build.partitions = partitions/partitions.csv
```

📁 Make sure your partitions.csv file is located in the partitions/ subfolder of your project directory.
PlatformIO will automatically include this partition scheme when compiling and flashing your project.