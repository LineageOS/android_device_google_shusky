#
# SPDX-FileCopyrightText: 2020 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

# Enable load module in parallel
BOARD_BOOTCONFIG += androidboot.load_modules_parallel=true

# The modules which need to be loaded in sequential
BOARD_KERNEL_CMDLINE += fips140.load_sequential=1
BOARD_KERNEL_CMDLINE += exynos_drm.load_sequential=1
BOARD_KERNEL_CMDLINE += g2d.load_sequential=1
BOARD_KERNEL_CMDLINE += samsung_iommu_v9.load_sequential=1

TARGET_BOARD_INFO_FILE := device/google/shusky/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := shiba
TARGET_SCREEN_DENSITY := 420

BOARD_KERNEL_CMDLINE += swiotlb=noforce
BOARD_KERNEL_CMDLINE += disable_dma32=on

include device/google/zuma/BoardConfig-common.mk
include device/google/shusky/sepolicy/shiba-sepolicy.mk
include device/google/shusky/wifi/BoardConfig-wifi.mk

DEVICE_PATH := device/google/shusky
VENDOR_PATH := vendor/google/shiba
include $(DEVICE_PATH)/$(TARGET_BOOTLOADER_BOARD_NAME)/BoardConfigLineage.mk
