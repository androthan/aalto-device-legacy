## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyPlayer3.6

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/aalto/full_aalto.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := aalto
PRODUCT_NAME := cm_aalto
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := YP-GS1

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="Galaxy Player 3.6" BUILD_ID=JDQ39 BUILD_DISPLAY_ID=JDQ39 BUILD_FINGERPRINT="samsung/YP-GS1/GT-I9003:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="YP-GS1 4.2.2 JDQ39 573038 release-keys"
