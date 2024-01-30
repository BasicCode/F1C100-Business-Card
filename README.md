# F1C100 Business Card

A simple business-card sized system based on an F1C100 SoC featuring:
* F1C100 with 32MB RAM
* 32MB Flash Storage
* 320x270 LCD
* 7 Push Buttons
* USB-C Host and OTG

## TODO and Issues
* LCD doesn't currently work.
* There seems to be a problem with Linux using the upper 16MB of the flash chip (4-byte addressing mode) and so it's currently only using the first 16MB of the chip.
* Convert to a UBI image and file system in the future.

## Asknowledgments
This project is based heavily on the work of others; I would like to acknowledge these project in particular:
* https://github.com/thirtythreeforty/businesscard-linux/tree/master
* https://github.com/florpor/licheepi-nano/tree/master
