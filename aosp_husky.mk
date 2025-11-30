#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/zuma/aosp_common.mk)
$(call inherit-product, device/google/shusky/device-husky.mk)

PRODUCT_NAME := aosp_husky
PRODUCT_DEVICE := husky
PRODUCT_MODEL := AOSP on husky
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Google
