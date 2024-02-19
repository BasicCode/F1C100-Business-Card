# cat /etc/init.d/S60demo.sh
#! /bin/sh
#
# Start the demo game

daemon -U -D /usr/bin/beagle "/usr/bin/beagle/demo"
