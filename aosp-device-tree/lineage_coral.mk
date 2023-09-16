#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from coral device
$(call inherit-product, device/google/coral/device.mk)

PRODUCT_DEVICE := coral
PRODUCT_NAME := lineage_coral
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 11 RQ3A.211001.001 7641976 release-keys"

BUILD_FINGERPRINT := google/coral/coral:11/RQ3A.211001.001/7641976:user/release-keys
