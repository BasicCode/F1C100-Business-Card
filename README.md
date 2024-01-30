# F1C100 Business Card

A simple business-card sized system based on an F1C100 SoC featuring:
* F1C100 with 32MB RAM
* 32MB Flash Storage
* 320x270 LCD
* 7 Push Buttons
* USB-C Host and OTG

## TODO and Issues
* LCD doesn't currently work.
* The **sunxi-fel** program is unable to write to the top 16MiB of the flash, and so the rootfs is effectively limited to 16MB. However, once the system if flashed it can be resized within Linux.
* Convert to a UBI image and file system in the future.

## Asknowledgments
This project is based heavily on the work of others; I would like to acknowledge these project in particular:
* https://github.com/thirtythreeforty/businesscard-linux/tree/master
* https://github.com/florpor/licheepi-nano/tree/master
