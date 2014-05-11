#!/tmp/busybox sh
#
# CWMUpdater for Samsung Galaxy Player 3.6
# Jonathan Grundmann, androthan<at>gmail.com, 2014
# Based on the work from Team Hacksung, 2011

check_mount() {
    if ! /tmp/busybox grep -q $1 /proc/mounts ; then
        /tmp/busybox mkdir -p $1
        /tmp/busybox umount -l $2
        if ! /tmp/busybox mount -t $3 $2 $1 ; then
            /tmp/busybox echo "Cannot mount $1."
            exit 1
        fi
    fi
}

set_log() {
    rm -rf $1
    exec >> $1 2>&1
}

# ui_print by Chainfire
OUTFD=$(/tmp/busybox ps | /tmp/busybox grep -v "grep" | /tmp/busybox grep -o -E "update_binary(.*)" | /tmp/busybox cut -d " " -f 3);
ui_print() {
  if [ $OUTFD != "" ]; then
    echo "ui_print ${1} " 1>&$OUTFD;
    echo "ui_print " 1>&$OUTFD;
  else
    echo "${1}";
  fi;
}

set -x
export PATH=/:/sbin:/system/xbin:/system/bin:/tmp:$PATH

IS_GSM='/tmp/busybox true'
SD_PART='/dev/block/mmcblk0p10'
#EFS_PART=`/tmp/busybox grep efs /proc/mtd | /tmp/busybox awk '{print $1}' | /tmp/busybox sed 's/://g' | /tmp/busybox sed 's/mtd/mtdblock/g'`

# Check CWM 5
if ! /tmp/busybox test -n "$UPDATE_PACKAGE" ; then
    # Scrape package location from /tmp/recovery.log
    UPDATE_PACKAGE=`/tmp/busybox cat /tmp/recovery.log | /tmp/busybox grep 'Update location:' | /tmp/busybox tail -n 1 | /tmp/busybox cut -d ' ' -f 3-`
fi

# Check previous
if ! /tmp/busybox test -e /mnt/sdcard/cyanogenmod.cfg ; then
        # unmount system (recovery seems to expect system to be unmounted)
        /tmp/busybox umount -l /system
        exit 0
fi

# MMC install

# Mount external storage
check_mount /mnt/sdcard $SD_PART vfat

# Log everything into cm11_upgrade.log
set_log /mnt/sdcard/cm11_upgrade.log

# Write the package path to sdcard cyanogenmod.cfg
if /tmp/busybox test -n "$UPDATE_PACKAGE" ; then
    PACKAGE_LOCATION=${UPDATE_PACKAGE#/mnt}
    /tmp/busybox echo "$PACKAGE_LOCATION" > /mnt/sdcard/cyanogenmod.cfg
fi

# Delete previous settings
/tmp/busybox rm -f /mnt/sdcard/clockworkmod/.settings

# Flash new boot image
/tmp/flash_image /dev/block/mmcblk0p5 /tmp/boot.img
if [ "$?" != "0" ] ; then
    exit 3
fi

/tmp/busybox sync

/sbin/reboot now
exit 0
