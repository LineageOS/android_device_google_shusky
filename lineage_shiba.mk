#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_shiba.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/shusky/shiba/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8
PRODUCT_NAME := lineage_shiba

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=shiba \
    PRIVATE_BUILD_DESC="shiba-user 14 AP2A.240905.003 12231197 release-keys"

BUILD_FINGERPRINT := google/shiba/shiba:14/AP2A.240905.003/12231197:user/release-keys

$(call inherit-product, vendor/google/shiba/shiba-vendor.mk)
