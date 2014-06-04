# Mount internal and external storage cards
# This script mounts the internal memory
# on /storage/sdcard0 and the external storage on 
# /storage/sdcard1
#
# Jonathan Grundmann, androthan@gmail.com, 2014

# Mount internal memory
mount -r -t vfat /dev/block/mmcblk0p10 /storage/sdcard0

# Mount external SD card
mount -r -t vfat /dev/block/mmcblk1p1 /storage/sdcard1

# Debugging proposes
setprop ro.ypgs1.fixed-sd true

# Bye, bye!
exit
