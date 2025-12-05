#
# SPDX-FileCopyrightText: 2020 The Android Open-Source Project
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := $(DEVICE_CODENAME)
TARGET_SCREEN_DENSITY := 480

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/$(DEVICE_CODENAME)/vendor

include $(DEVICE_PATH)/BoardConfigCommon.mk

include $(VENDOR_PATH)/BoardConfigVendor.mk
