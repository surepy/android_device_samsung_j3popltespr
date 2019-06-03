# Inherit some common cm stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/j3popltespr/device_j3popltespr.mk)

# ???
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_base.mk)

# Release name
PRODUCT_RELEASE_NAME := j3popltespr

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j3popltespr
PRODUCT_NAME := cm_j3popltespr
PRODUCT_BRAND := samsung
PRODUCT_MODEL := j3popltespr
PRODUCT_MANUFACTURER := samsung

# uwu
TARGET_UNOFFICIAL_BUILD_ID := surepyw