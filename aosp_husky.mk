#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/zuma/aosp_common.mk)
$(call inherit-product, device/google/shusky/device-husky.mk)

PRODUCT_NAME := aosp_husky
PRODUCT_DEVICE := husky
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_NAME_FOR_ATTESTATION := husky
PRODUCT_DEVICE_FOR_ATTESTATION := husky
PRODUCT_MODEL_FOR_ATTESTATION := Pixel 8 Pro
PRODUCT_BRAND_FOR_ATTESTATION := google
PRODUCT_MANUFACTURER_FOR_ATTESTATION := Google
