# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/zte/s2002/full_s2002.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

TARGET_BOOTANIMATION_NAME := 1080

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, vendor/cm/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/cm/config/common_full.mk)



## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s2002
PRODUCT_NAME := cm_s2002
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE START
PRODUCT_MANUFACTURER := ZTE

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN

#PRODUCT_LOCALES := zh_CN zh_TW en_US

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=s2002 \
    TARGET_DEVICE=s2002 \
    PRODUCT_MODEL=s2002

