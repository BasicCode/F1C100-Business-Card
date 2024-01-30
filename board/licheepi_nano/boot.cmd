setenv bootargs console=ttyS0,115200n8 rootwait root=/dev/mtdblock3 rw rootfstype=jffs2
sf probe 0
sf read 0x80c00000 0x100000 0x10000
sf read 0x80008000 0x120000 0x400000
bootz 0x80008000 - 0x80C00000