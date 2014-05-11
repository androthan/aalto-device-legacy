###HUGO_PROJECT###
# Inherit AOSP device configuration for YP-GI1
$(call inherit-product, device/samsung/hugo/full_hugo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_hugo
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := hugo
PRODUCT_MODEL := YP-GI1
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE=YP-GS1 PRODUCT_NAME="Galaxy Player 4.2" BUILD_FINGERPRINT=samsung/YP-GI1/YP-GI1:2.3.6/GINGERBREAD/JVKPB:user/release-keys PRIVATE_BUILD_DESC="YP-GI1-user 2.3.6 GINGERBREAD XXLF1 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-samsung
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_aalto_defconfig



# Add the FM app
PRODUCT_PACKAGES += FM

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# Add additional mounts
PRODUCT_PROPERTY_OVERRIDES += \
    ro.additionalmounts=/mnt/emmc \
    gsm.version.baseband=GI1XXLF1 \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/emmc

# Release name and versioning
PRODUCT_RELEASE_NAME := SamsungGalaxyPlayer42
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

# Copy YP-GI1 specific prebuilt files
PRODUCT_COPY_FILES += \
    device/samsung/aalto/bootanimation.zip:system/media/bootanimation.zip \
    device/samsung/aalto/bootanimation.zip:system/media/shutdownanimation.zip
###END###
