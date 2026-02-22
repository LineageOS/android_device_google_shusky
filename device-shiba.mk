#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Kernel
TARGET_LINUX_KERNEL_VERSION := 6.1
TARGET_KERNEL_DEVICE := shusky
TARGET_KERNEL_DIR := device/google/$(TARGET_KERNEL_DEVICE)-kernels/$(TARGET_LINUX_KERNEL_VERSION)
TARGET_KERNEL_PLATFORM_SOURCE := google/gs-$(TARGET_LINUX_KERNEL_VERSION)

ifneq ($(TARGET_BOOTS_16K),true)
PRODUCT_16K_DEVELOPER_OPTION := true
endif

# Inherit from zuma
include device/google/zuma/device-shipping-common.mk

# GPS
PRODUCT_PACKAGES += \
    android.hardware.sensors-V2-ndk.vendor:64

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    device/google/shusky/overlay-lineage

PRODUCT_PACKAGES += \
    FrameworkResOverlayVendorShusky \
    PixelNfcOverlayShusky \
    PixelWifiOverlay2023 \
    SafetyRegulatoryInfoOverlayProductShusky

PRODUCT_PACKAGES += \
    DMServiceOverlayVendorShiba \
    FrameworkResOverlayProductShiba \
    FrameworkResOverlayVendorShiba \
    PixelDisplayServiceOverlayProductShiba \
    PixelNfcOverlayShiba \
    SettingsGoogleShibaOverlay \
    SettingsShibaOverlay \
    SystemUIGoogleOverlayVendorShiba

PRODUCT_PACKAGES += \
    ApertureOverlayShiba

# PowerShare
include hardware/google/pixel/powershare/device.mk

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/$(DEVICE_CODENAME)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/$(DEVICE_CODENAME)/vendor.prop

# Recovery
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/init.recovery.device.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.shiba.rc

PRODUCT_PACKAGES += \
    init.recovery.shiba.touch.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Window extensions
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)
