LOCAL_PATH := $(call my-dir) 

MASTER_BOOTSTRAP := $(PRODUCT_OUT)/bootstrap.cpio.gz
$(MASTER_BOOTSTRAP): $(INSTALLED_RAMDISK_TARGET) $(recovery_ramdisk) $(PRODUCT_OUT)/utilities/flash_image $(PRODUCT_OUT)/utilities/busybox $(PRODUCT_OUT)/utilities/make_ext4fs $(PRODUCT_OUT)/utilities/erase_image
	$(call pretty,"Bootstrap: $@")
	cp -r device/samsung/aalto/bootstrap $(PRODUCT_OUT)
	cd $(PRODUCT_OUT)/root/; chmod 0644 *.rc default.prop; find . | cpio -o -H newc | gzip > ../bootstrap/ramdisk-cm.cpio.gz
	cd $(PRODUCT_OUT)/recovery/root/; chmod 0644 *.rc default.prop; find . | cpio -o -H newc | gzip > ../../bootstrap/ramdisk-recovery.cpio.gz
	cd $(PRODUCT_OUT)/bootstrap/; find . | cpio -o -H newc | gzip > ../bootstrap.cpio.gz

INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img
$(INSTALLED_BOOTIMAGE_TARGET): $(TARGET_PREBUILT_KERNEL) $(MASTER_BOOTSTRAP)
	$(call pretty,"Boot image: $@")
	$(HOST_OUT)/bin/mkbootimg --kernel $(TARGET_PREBUILT_KERNEL) --ramdisk $(MASTER_BOOTSTRAP) --base 0x81800000 --pagesize $(BOARD_KERNEL_PAGESIZE) --ramdisk_offset $(RAMDISK_OFFSET) --output $@

$(INSTALLED_RECOVERYIMAGE_TARGET): $(INSTALLED_BOOTIMAGE_TARGET)
	$(ACP) $(INSTALLED_BOOTIMAGE_TARGET) $@
