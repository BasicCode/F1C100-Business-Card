# F1C100 Business Card

A simple business-card sized system based on an F1C100 SoC featuring:
* F1C100 with 32MB RAM
* 32MB Flash Storage
* 128x160xRGB LCD
* 7 Push Buttons
* USB-C Host and OTG

## Design
The board was build by JLCPCB and the project is available [here](https://oshwlab.com/tommy_tom2000/f1c100-business-card)

## Usage
The board has an unpopulated header for the SPI0 port which can be used to write to the flash chip directly. The F1C100 chip also includes a USB stack and SPI Flash driver in the internal bootloader in "FEL" mode, which can be used to write to the first 16MB of the chip.
* To force the device in to FEL mode, first bridge the CS pin with 3v3 to pull the line high and make the F1c100 footloader think there is no boot device.
* Plug the board in to a PC via USB. The LCD should light up white, and the device should enumerate as a USB device.
* Remove the bridge from chip select (CS) pin.
* Follow the instructions to get **sunxi-tools** for your OS [here](https://linux-sunxi.org/FEL).
* Build the Buildroot external tree:
```
BR2_EXTERNAL=../F1C100-Business-Card make f1c100-business-card_defconfig
```
* Use **sunxi-fel** to write the *flash.bin* file to the flash drive:
```
./sunxi-fel -p spiflash-write 0 flash.bin
```
* Reboot the device by either bridging the *reset* jumper, or clycling power.

## TODO and Issues
* USB port doesn't seem to register new devices. Works in FEL mode.
* The **sunxi-fel** program is unable to write to the top 16MiB of the flash, and so the rootfs is effectively limited to 16MB. However, once the system if flashed it can be resized within Linux.
* Convert to a UBI image and file system in the future.
* Push Button GPIO Port Numbers:
  
| BUTTON | PIN     | gpiochip0 number |
|--------|---------|------------------|
| RIGHT | PE3  | 131 |
| UP    | PE4  | 132 |
| DOWN  | PE5  | 133 |
| LEFT  | PE6  | 134 |
| A     | PE12 | 140 |
| B     | PE11 | 139 |
| C     | PD15 | 111 |
  
You can read the GPIO value using the GPIO export system:
```
echo 131 > /sys/class/gpio/export
cat /sys/class/gpio/gpio131/value
```
OR by using GPIO tools:
```
gpioget gpiochip0 131
```

## Asknowledgments
This project is based heavily on the work of others; I would like to acknowledge these project in particular:
* https://github.com/thirtythreeforty/businesscard-linux/tree/master
* https://github.com/florpor/licheepi-nano/tree/master
* [F1C100 Datasheet](https://whycan.com/files/members/3/F1C100s_Datasheet_V1_0.pdf)
* [Lichee-Pi Nano](https://wiki.sipeed.com/hardware/en/lichee/Nano/Nano.html) 