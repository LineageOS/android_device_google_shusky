#
# Copyright (C) 2024 The Android Open-Source Project
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

ifeq ($(PRODUCT_16K_DEVELOPER_OPTION),true)
# Configures the 16kb kernel and modules for OTA updates.
TARGET_KERNEL_DIR_16K := $(TARGET_KERNEL_DIR)/16kb
BOARD_KERNEL_PATH_16K := $(TARGET_KERNEL_DIR_16K)/Image.lz4

BOARD_KERNEL_MODULES_16K += $(file < $(TARGET_KERNEL_DIR_16K)/vendor_kernel_boot.modules.load)
BOARD_KERNEL_MODULES_16K += $(file < $(TARGET_KERNEL_DIR_16K)/system_dlkm.modules.load)
BOARD_KERNEL_MODULES_16K += $(file < $(TARGET_KERNEL_DIR_16K)/vendor_dlkm.modules.load)
BOARD_KERNEL_MODULES_16K := $(foreach module,$(BOARD_KERNEL_MODULES_16K),$(TARGET_KERNEL_DIR_16K)/$(notdir $(module)))

# Shusky targets use exynos-bcm_dbg.ko module instead of bcm_dbg.ko.
BOARD_KERNEL_MODULES_16K := $(filter-out %/bcm_dbg.ko,$(BOARD_KERNEL_MODULES_16K))
BOARD_KERNEL_MODULES_LOAD_16K := $(foreach module,$(BOARD_KERNEL_MODULES_16K),$(notdir $(module)))

BOARD_16K_OTA_USE_INCREMENTAL := true
BOARD_16K_OTA_MOVE_VENDOR := true
endif