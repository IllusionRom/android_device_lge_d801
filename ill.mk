## Specify phone tech before including full_phone
$(call inherit-product, vendor/illusion/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

	# Inherit some common ILL stuff.
$(call inherit-product, vendor/illusion/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d801/d801.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d801
PRODUCT_NAME := ill_d801
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D801
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_tmo_us/g2:4.2.2/JDQ39B/D80110c.1376399304:user/release-keys
PRIVATE_BUILD_DESC="g2_tmo_us-user 4.2.2 JDQ39B D80110c.1376399304 release-keys"

PRODUCT_PACKAGES += Torch

# bootanimation
PRODUCT_COPY_FILES += \
        vendor/illusion/bootanimation/Illusion768x768.zip:system/media/bootanimation.zip
