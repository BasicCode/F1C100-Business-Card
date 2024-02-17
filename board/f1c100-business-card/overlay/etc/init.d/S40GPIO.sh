#! /bin/sh
# A script which exports the GPIO port buttons

echo 131 > /sys/class/gpio/export
echo in > /sys/class/gpio/gpio131/direction
echo "Exported RIGHT  PE3   131" > /dev/kmsg
echo 132 > /sys/class/gpio/export
echo in > /sys/class/gpio/gpio132/direction
echo "Exported UP     PE4   132" > /dev/kmsg
echo 133 > /sys/class/gpio/export
echo in > /sys/class/gpio/gpio133/direction
echo "Exported DOWN   PE5   133" > /dev/kmsg
echo 134 > /sys/class/gpio/export
echo in > /sys/class/gpio/gpio134/direction
echo "Exported LEFT   PE6   134" > /dev/kmsg
echo 140 > /sys/class/gpio/export
echo in > /sys/class/gpio/gpio140/direction
echo "Exported A      PE12  140" > /dev/kmsg
echo 139 > /sys/class/gpio/export
echo in > /sys/class/gpio/gpio139/direction
echo "Exported B      PE11  139" > /dev/kmsg
echo 111 > /sys/class/gpio/export
echo in > /sys/class/gpio/gpio111/direction
echo "Exported C      PD15  111" > /dev/kmsg