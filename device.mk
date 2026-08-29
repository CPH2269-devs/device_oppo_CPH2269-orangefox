#
# Copyright (C) 2026 OrangeFox Recovery Project
#

LOCAL_PATH := device/oppo/CPH2269

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
# PRODUCT_BUILD_SUPER_PARTITION := false

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# API
PRODUCT_SHIPPING_API_LEVEL := 30

# Fastbootd Support
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Decryption & Security HALs
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.keymaster@4.0-service.trustonic \
    vendor.oplus.hardware.cryptoeng@1.0-service \
    android.hardware.health@2.1-service

# F2FS Tools
PRODUCT_PACKAGES += \
    fsck.f2fs \
    mkfs.f2fs \
    sload.f2fs

# Additional Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
	libkeymaster4 \
	libpuresoftkeymasterdevice

RECOVERY_LIBRARY_SOURCE_FILES += \
	$(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
	$(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so
	