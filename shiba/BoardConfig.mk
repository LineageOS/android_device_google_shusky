#
# Copyright (C) 2020 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Enable load module in parallel
BOARD_BOOTCONFIG += androidboot.load_modules_parallel=true

# The modules which need to be loaded in sequential
BOARD_KERNEL_CMDLINE += exynos_drm.load_sequential=1
BOARD_KERNEL_CMDLINE += g2d.load_sequential=1
BOARD_KERNEL_CMDLINE += samsung_iommu_v9.load_sequential=1

TARGET_BOARD_INFO_FILE := device/google/shusky/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := shiba

RELEASE_GOOGLE_PRODUCT_RADIO_DIR := $(RELEASE_GOOGLE_SHIBA_RADIO_DIR)
RELEASE_GOOGLE_PRODUCT_RADIOCFG_DIR := $(RELEASE_GOOGLE_HUSKY_RADIOCFG_DIR)
ifneq (,$(filter AP1%,$(RELEASE_PLATFORM_VERSION)))
RELEASE_GOOGLE_PRODUCT_BOOTLOADER_DIR := bootloader/24Q1
else ifneq (,$(filter AP2% AP3%,$(RELEASE_PLATFORM_VERSION)))
RELEASE_GOOGLE_PRODUCT_BOOTLOADER_DIR := bootloader/24Q2
else
RELEASE_GOOGLE_PRODUCT_BOOTLOADER_DIR := bootloader/trunk
endif

ifdef PHONE_CAR_BOARD_PRODUCT
    include vendor/auto/embedded/products/$(PHONE_CAR_BOARD_PRODUCT)/BoardConfig.mk
else
    TARGET_SCREEN_DENSITY := 420
endif

BOARD_USES_GENERIC_AUDIO := true
USES_DEVICE_GOOGLE_SHUSKY := true
BOARD_KERNEL_CMDLINE += swiotlb=noforce
BOARD_KERNEL_CMDLINE += disable_dma32=on

include device/google/shusky/device-shusky-common.mk

include device/google/zuma/BoardConfig-common.mk
-include vendor/google_devices/zuma/prebuilts/BoardConfigVendor.mk
-include vendor/google_devices/shiba/proprietary/BoardConfigVendor.mk
include device/google/shusky/sepolicy/shiba-sepolicy.mk
include device/google/shusky/wifi/BoardConfig-wifi.mk

include device/google/shusky/shiba/BoardConfigLineage.mk
