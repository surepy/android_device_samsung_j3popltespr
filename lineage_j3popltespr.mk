# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/j3popltespr/device.mk)

# Release name
PRODUCT_RELEASE_NAME := j3popltespr

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j3popltespr
PRODUCT_NAME := lineage_j3popltespr
PRODUCT_BRAND := samsung
PRODUCT_MODEL := j3popltespr
PRODUCT_MANUFACTURER := samsung