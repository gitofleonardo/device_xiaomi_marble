#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common crdroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := awaken_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Crdroid stuff.
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

# MindGapps Core
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

# HMS Core
TARGET_INCLUDE_AURORA := false
TARGET_INCLUDE_HMS := false
TARGET_INCLUDE_APP_GALLERY := true
$(call inherit-product-if-exists, vendor/hms/hms-vendor.mk)