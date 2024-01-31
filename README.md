# F1C100 Business Card

A simple business-card sized system based on an F1C100 SoC featuring:
* F1C100 with 32MB RAM
* 32MB Flash Storage
* 128x160xRGB LCD
* 7 Push Buttons
* USB-C Host and OTG

## Design
The board was build by JLCPCB and the project is available [here](https://oshwlab.com/tommy_tom2000/f1c100-business-card)

## TODO and Issues
* USB port doesn't seem to register new devices. Works in FEL mode.
* The **sunxi-fel** program is unable to write to the top 16MiB of the flash, and so the rootfs is effectively limited to 16MB. However, once the system if flashed it can be resized within Linux.
* Convert to a UBI image and file system in the future.

## Asknowledgments
This project is based heavily on the work of others; I would like to acknowledge these project in particular:
* https://github.com/thirtythreeforty/businesscard-linux/tree/master
* https://github.com/florpor/licheepi-nano/tree/master
* [F1C100 Datasheet](https://whycan.com/files/members/3/F1C100s_Datasheet_V1_0.pdf)
