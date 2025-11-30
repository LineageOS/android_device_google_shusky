#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/zuma/aosp_common.mk)
$(call inherit-product, device/google/shusky/device-shiba.mk)

PRODUCT_NAME := aosp_shiba
PRODUCT_DEVICE := shiba
PRODUCT_MODEL := AOSP on shiba
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Google
