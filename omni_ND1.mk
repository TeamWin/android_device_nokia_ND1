#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ND1 device
LOCAL_PATH := device/nokia/ND1
PRODUCT_DEVICE := ND1
PRODUCT_NAME := omni_ND1
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 5
PRODUCT_MANUFACTURER := HMD Global

PRODUCT_GMS_CLIENTID_BASE := android-nokia

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Nokia/TA-1024_00WW/ND1:9/PKQ1.181105.001/00WW_6_18A:user/release-keys" \
    PRIVATE_BUILD_DESC="TA-1024_00WW-user 9 PKQ1.181105.001 00WW_6_18A release-keys"

# Screen Resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Charger
PRODUCT_PACKAGES += \
	charger \
	charger_res_images

# Encryption
PRODUCT_PACKAGES += \
	libcryptfs_hw
