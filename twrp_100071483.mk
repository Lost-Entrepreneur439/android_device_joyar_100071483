#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from 100071483 device
$(call inherit-product, device/joyar/100071483/device.mk)

PRODUCT_DEVICE := 100071483
PRODUCT_NAME := twrp_100071483
PRODUCT_BRAND := onn
PRODUCT_MODEL := 100071483
PRODUCT_MANUFACTURER := joyar

PRODUCT_GMS_CLIENTID_BASE := android-joyar

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_tb8168p1_64_bsp-user 11 RP1A.200720.011 mp5V4198 release-keys"

BUILD_FINGERPRINT := onn/100071483/100071483:11/RP1A.200720.011/1652944196:user/release-keys
