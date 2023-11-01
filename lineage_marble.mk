#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

# Crdroid stuff.
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

## Device identifier
PRODUCT_BRAND := Huawei
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_NAME := lineage_marble

PRODUCT_SYSTEM_NAME := ohosqssi
PRODUCT_SYSTEM_DEVICE := ohosqssi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# MindGapps Core
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

# HMS Core
TARGET_INCLUDE_AURORA := true
$(call inherit-product-if-exists, vendor/hms/hms-vendor.mk)