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
BOARD_KERNEL_CMDLINE += fips140.load_sequential=1
BOARD_KERNEL_CMDLINE += exynos_drm.load_sequential=1
BOARD_KERNEL_CMDLINE += g2d.load_sequential=1
BOARD_KERNEL_CMDLINE += samsung_iommu_v9.load_sequential=1

TARGET_BOARD_INFO_FILE := device/google/shusky/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := husky

RELEASE_GOOGLE_PRODUCT_RADIO_DIR := $(RELEASE_GOOGLE_HUSKY_RADIO_DIR)
RELEASE_GOOGLE_PRODUCT_RADIOCFG_DIR := $(RELEASE_GOOGLE_HUSKY_RADIOCFG_DIR)
RELEASE_GOOGLE_BOOTLOADER_HUSKY_DIR ?= pdk# Keep this for pdk TODO: b/327119000
RELEASE_GOOGLE_PRODUCT_BOOTLOADER_DIR := bootloader/$(RELEASE_GOOGLE_BOOTLOADER_HUSKY_DIR)
$(call soong_config_set,shusky_bootloader,prebuilt_dir,$(RELEASE_GOOGLE_BOOTLOADER_HUSKY_DIR))

ifdef PHONE_CAR_BOARD_PRODUCT
    include vendor/auto/embedded/products/$(PHONE_CAR_BOARD_PRODUCT)/BoardConfig.mk
else
    TARGET_SCREEN_DENSITY := 480 
endif

BOARD_USES_GENERIC_AUDIO := true
USES_DEVICE_GOOGLE_SHUSKY := true
BOARD_KERNEL_CMDLINE += swiotlb=noforce
BOARD_KERNEL_CMDLINE += disable_dma32=on

# Wifi
WIFI_FEATURE_REAR_CAMERA_SAR := true
$(call soong_config_set,wifi,feature_rear_camera_sar,$(WIFI_FEATURE_REAR_CAMERA_SAR))

include device/google/shusky/BoardConfig-shusky-common.mk
include device/google/shusky/device-shusky-common.mk

include device/google/zuma/BoardConfig-common.mk
-include vendor/google_devices/zuma/prebuilts/BoardConfigVendor.mk
-include vendor/google_devices/husky/proprietary/BoardConfigVendor.mk
include device/google/shusky/sepolicy/husky-sepolicy.mk
include device/google/shusky/wifi/BoardConfig-wifi.mk

ifneq (,$(filter eng, $(TARGET_BUILD_VARIANT)))
-include device/google/common/etm/5_15/BoardUserdebugModules.mk
endif

DEVICE_PATH := device/google/shusky
VENDOR_PATH := vendor/google/husky
include $(DEVICE_PATH)/$(TARGET_BOOTLOADER_BOARD_NAME)/BoardConfigLineage.mk
