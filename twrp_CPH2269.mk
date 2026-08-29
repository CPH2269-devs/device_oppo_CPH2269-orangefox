#
# Copyright (C) 2026 OrangeFox Recovery Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from CPH2269 device
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, device/oppo/CPH2269/device.mk)

PRODUCT_DEVICE := CPH2269
PRODUCT_NAME := twrp_CPH2269
PRODUCT_BRAND := oppo
PRODUCT_MODEL := OPPO A16
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2269-user 11 RP1A.200720.011 1629972958632 release-keys"

BUILD_FINGERPRINT := OPPO/CPH2269/OP4F97:11/RP1A.200720.011/1629972958632:user/release-keys