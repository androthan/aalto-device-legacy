#!/stage1/busybox sh
_PATH="$PATH"
export PATH=/stage1

busybox cd /
busybox date >>boot.txt
exec >>boot.txt 2>&1
busybox rm -fr init
busybox mkdir -p /proc
busybox mkdir -p /sys
busybox mkdir -p /system
busybox mount -t proc proc /proc
busybox mount -t sysfs sysfs /sys
busybox mount -t ext4 /dev/block/mmcblk0p8 /system

# CyanogenMod boot
RAMDISK=ramdisk-cm.cpio.gz

# CWM boot
if busybox grep -q bootmode=2 /proc/cmdline || busybox grep -q androidboot.mode=reboot_recovery /proc/cmdline ; then
	RAMDISK=ramdisk-recovery.cpio.gz

# CM11 setup boot
elif ! busybox test -e /system/build.prop ; then
	busybox sleep 3
	# make_ext4fs -b 4096 -g 32768 -i 8192 -I 256 -a /cache /dev/block/mmcblk0p7
	busybox mkdir /cache
	busybox mount -t ext4 /dev/block/mmcblk0p7 /cache
	busybox rm -fr /cache/recovery/*

	busybox mkdir -p /sdcard
	busybox mount -t vfat /dev/block/mmcblk0p10 /sdcard

	UPDATE=$(busybox cat /sdcard/cyanogenmod.cfg)

	if busybox test -n "$UPDATE" && busybox test -e "$UPDATE"; then
		busybox echo "install_zip(\"`echo $UPDATE`\");" > /cache/recovery/extendedcommand
	fi

	RAMDISK=ramdisk-recovery.cpio.gz

	busybox umount /sdcard
fi

busybox gunzip -c ${RAMDISK} | busybox cpio -i

# Charger mode
if busybox grep -q bootmode=5 /proc/cmdline || busybox grep -q androidboot.mode=usb_charger /proc/cmdline ; then
	busybox cp lpm.rc init.rc
	busybox rm init.aalto.rc
fi

busybox umount /sys
busybox umount /proc
busybox umount /system
busybox date >>boot.txt

busybox rm -fr ramdisk-cm.cpio.gz
busybox rm -fr ramdisk-recovery.cpio.gz

busybox rm -fr /stage1 /dev/*

export PATH="${_PATH}"
exec /init
