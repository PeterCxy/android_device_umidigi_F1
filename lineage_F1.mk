#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from UMIDIGI F1 device
$(call inherit-product, device/umidigi/F1/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_F1
PRODUCT_DEVICE := F1
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := F1
PRODUCT_MANUFACTURER := A-gold

# Product characteristics
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

BUILD_FINGERPRINT := UMIDIGI/F1/F1:9/PPR1.180610.011/root.20190724.172148:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="F1-user 9 PPR1.180610.011 root.20190724.172148 release-keys"

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-umidigi
