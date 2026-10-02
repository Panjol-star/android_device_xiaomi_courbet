#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set Miuicamera version
TARGET_USES_STOCK_MIUICAMERA := true

# Inherit from courbet device
$(call inherit-product, device/xiaomi/courbet/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_courbet
PRODUCT_DEVICE := courbet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 Lite 4G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="courbet_global-user 13 TKQ1.221013.002 V14.0.3.0.TKQMIXM release-keys" \
    BuildFingerprint=Xiaomi/courbet/courbet:13/TKQ1.221013.002/V14.0.3.0.TKQMIXM:user/release-keys

LUNARIS_BUILD_TYPE := UNOFFICIAL
TARGET_OPTIMIZED_DEXOPT := true
WITH_BCR := true
WITH_GMS := true
TARGET_USE_FILES := false
TARGET_USE_MAPS := false
WITH_PIXEL_LAUNCHER := false
TARGET_USE_GPHOTOS := false
TARGET_SUPPORTED_REFRESH_RATES := 60,90
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_MATLOG := true
