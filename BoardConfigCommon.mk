#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Security - must be defined before including BoardConfig-common.mk
BOOT_SECURITY_PATCH := 2026-02-05
VENDOR_SECURITY_PATCH := $(BOOT_SECURITY_PATCH)

include device/google/zuma/BoardConfig-common.mk

# Kernel modules
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_BLOCKLIST_FILE := $(DEVICE_PATH)/recovery/modules.blocklist.vendor_kernel_boot
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW := $(strip $(shell cat $(DEVICE_PATH)/recovery/modules.load.vendor_kernel_boot))
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD += $(BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW)
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES += $(addprefix $(KERNEL_MODULE_DIR)/, $(notdir $(BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW)))

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor \
    hardware/google/pixel-sepolicy/vibrator/common \
    hardware/google/pixel-sepolicy/vibrator/cs40l26

# WiFi
include $(DEVICE_PATH)/wifi/BoardConfig-wifi.mk
