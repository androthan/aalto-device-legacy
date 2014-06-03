# Mount internal SD card
# This script mounts the internal memory
# on /storage/sdcard0
# Jonathan Grundmann, androthan@gmail.com, 2014

setprop ro.ypgs1.fixed-sd true
mount -r -t vfat /dev/block/mmcblk0p10 /storage/sdcard

exit
