#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from coral device
$(call inherit-product, device/google/coral/device.mk)

PRODUCT_DEVICE := coral
PRODUCT_NAME := omni_coral
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 13 TP1A.221005.002.B2 9382335 release-keys"

BUILD_FINGERPRINT := google/coral/coral:13/TP1A.221005.002.B2/9382335:user/release-keys
