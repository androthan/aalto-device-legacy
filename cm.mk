# Release name
PRODUCT_RELEASE_NAME := GalaxyPlayer36

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/aalto/full_aalto.mk)

# Device IDs
PRODUCT_DEVICE := aalto
PRODUCT_NAME := cm_aalto
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := YP-GS1

# Target screen
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDE := 320

# Device name
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="Galaxy Player 3.6"
