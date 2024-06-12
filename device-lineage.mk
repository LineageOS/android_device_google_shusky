#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# ANGLE - Almost Native Graphics Layer Engine
PRODUCT_PACKAGES += \
    ANGLE

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.mep.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.mep.xml \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# Kernel
TARGET_PREBUILT_KERNEL := device/google/shusky-kernel/Image.lz4

# PowerShare
include hardware/google/pixel/powershare/device.mk

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk

# Build necessary packages for vendor

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.core.sounddose-V2-ndk.vendor \
    android.hardware.audio.sounddose-V2-ndk.vendor \
    libaudio_aidl_conversion_common_ndk.vendor \
    libaudioroutev2.vendor \
    libtinycompress \
    libutils_binder.vendor

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth-V1-ndk.vendor \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor

# Camera
PRODUCT_PACKAGES += \
    libGralloc4Wrapper \
    pixel-power-ext-V1-ndk.vendor

# Codec2
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.2.vendor \
    libacryl \
    libacryl_hdr_plugin \
    libavservices_minijail.vendor \
    libcodec2_hidl@1.2.vendor \
    libcodec2_soft_common.vendor \
    libcodec2_vndk.vendor \
    libexynosutils \
    libexynosv4l2 \
    libmedia_ecoservice.vendor \
    libmedia_omx.vendor \
    libsfplugin_ccodec_utils.vendor \
    libstagefright_bufferpool@2.0.1.vendor \
    libstagefright_omx.vendor \
    libstagefright_omx_utils.vendor \
    libstagefright_xmlparser.vendor \
    libvendorgraphicbuffer

# Confirmation UI
PRODUCT_PACKAGES += \
    android.hardware.confirmationui-V1-ndk.vendor \
    android.hardware.confirmationui-lib.trusty \
    android.hardware.confirmationui@1.0.vendor \
    libteeui_hal_support.vendor

# Contexthub
PRODUCT_PACKAGES += \
    android.hardware.contexthub-V3-ndk.vendor \
    chre_atoms_log \
    chre_metrics_reporter \
    chremetrics-cpp

# GPS
PRODUCT_PACKAGES += \
    liblzma.vendor \
    libunwindstack.vendor

# Graphics
PRODUCT_PACKAGES += \
    libEGL_angle \
    libGLESv1_CM_angle \
    libGLESv2_angle

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport.vendor \
    libhwbinder.vendor

# Identity credential
PRODUCT_PACKAGES += \
    android.hardware.identity-V5-ndk.vendor \
    android.hardware.identity-support-lib.vendor \
    android.hardware.identity_credential.xml

# Json
PRODUCT_PACKAGES += \
    libjson

# Nos
PRODUCT_PACKAGES += \
    lib_android_keymaster_keymint_utils.vendor \
    libkeymaster4support.vendor \
    libkeymint.vendor \
    libkeymint_support.vendor \
    libnos \
    libnosprotos \
    libnos_client_citadel \
    libnos_datagram \
    libnos_datagram_citadel \
    libnos_feature \
    libnos_transport \
    nos_app_avb \
    nos_app_identity \
    nos_app_keymaster \
    nos_app_keymaster_ctdl \
    nos_app_weaver \
    pixelpowerstats_provider_aidl_interface-cpp.vendor

# Radio
PRODUCT_PACKAGES += \
    libnetutils.vendor \
    libsqlite.vendor \
    libziparchive.vendor \
    modem_clock_manager.vendor \
    modem_clock_manager_impl.vendor

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.0.vendor \
    android.hardware.sensors@2.1.vendor \
    libsensorndkbridge \
    sensors.dynamic_sensor_hal

# Trusty
PRODUCT_PACKAGES += \
    android.trusty.stats.nw.setter-cpp.vendor \
    libbinder_trusty \
    libtrusty_metrics

# Misc interfaces
PRODUCT_PACKAGES += \
    android.frameworks.stats-V1-cpp.vendor \
    android.frameworks.stats-V1-ndk.vendor \
    android.hardware.authsecret-V1-ndk.vendor \
    android.hardware.gnss-V3-ndk.vendor \
    android.hardware.health-V1-ndk.vendor \
    android.hardware.input.common-V1-ndk.vendor \
    android.hardware.input.processor-V1-ndk.vendor \
    android.hardware.keymaster@3.0.vendor \
    android.hardware.keymaster@4.0.vendor \
    android.hardware.keymaster@4.1.vendor \
    android.hardware.neuralnetworks-V4-ndk.vendor \
    android.hardware.neuralnetworks@1.0.vendor \
    android.hardware.neuralnetworks@1.1.vendor \
    android.hardware.neuralnetworks@1.2.vendor \
    android.hardware.neuralnetworks@1.3.vendor \
    android.hardware.oemlock-V1-ndk.vendor \
    android.hardware.radio-V2-ndk.vendor \
    android.hardware.radio.config-V2-ndk.vendor \
    android.hardware.radio.config@1.0.vendor \
    android.hardware.radio.config@1.1.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.data-V2-ndk.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.radio.ims-V1-ndk.vendor \
    android.hardware.radio.messaging-V2-ndk.vendor \
    android.hardware.radio.modem-V2-ndk.vendor \
    android.hardware.radio.network-V2-ndk.vendor \
    android.hardware.radio.sap-V1-ndk.vendor \
    android.hardware.radio.sim-V2-ndk.vendor \
    android.hardware.radio.voice-V2-ndk.vendor \
    android.hardware.radio@1.2.vendor \
    android.hardware.radio@1.3.vendor \
    android.hardware.radio@1.4.vendor \
    android.hardware.radio@1.5.vendor \
    android.hardware.radio@1.6.vendor \
    android.hardware.security.sharedsecret-V1-ndk.vendor \
    android.hardware.thermal-V1-ndk.vendor \
    android.hardware.thermal@1.0.vendor \
    android.hardware.thermal@2.0.vendor \
    android.hardware.weaver-V2-ndk.vendor \
    android.hardware.wifi-V1-ndk.vendor \
    com.google.hardware.pixel.display-V9-ndk.vendor \
    hardware.google.ril_ext-V1-ndk.vendor

# Misc
PRODUCT_PACKAGES += \
    libevent.vendor
