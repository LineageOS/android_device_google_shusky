#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/zuma/aosp_common.mk)
$(call inherit-product, device/google/shusky/device-shiba.mk)

PRODUCT_NAME := aosp_shiba
PRODUCT_DEVICE := shiba
PRODUCT_MODEL := Pixel 8
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_NAME_FOR_ATTESTATION := shiba
PRODUCT_DEVICE_FOR_ATTESTATION := shiba
PRODUCT_MODEL_FOR_ATTESTATION := Pixel 8
PRODUCT_BRAND_FOR_ATTESTATION := google
PRODUCT_MANUFACTURER_FOR_ATTESTATION := Google
