#
# Copyright (C) 2023 The Android Open-Source Project
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


# Thermal Config
ifeq (,$(TARGET_VENDOR_THERMAL_CONFIG_PATH))
TARGET_VENDOR_THERMAL_CONFIG_PATH := device/google/shusky/thermal
endif

PRODUCT_COPY_FILES += \
	$(TARGET_VENDOR_THERMAL_CONFIG_PATH)/thermal_info_config_$(TARGET_DEVICE).json:$(TARGET_COPY_OUT_VENDOR)/etc/thermal_info_config.json \
	$(TARGET_VENDOR_THERMAL_CONFIG_PATH)/thermal_info_config_charge_$(TARGET_DEVICE).json:$(TARGET_COPY_OUT_VENDOR)/etc/thermal_info_config_charge.json

# Power HAL config
ifeq (,$(TARGET_VENDOR_PERF_CONFIG_PATH))
TARGET_VENDOR_PERF_CONFIG_PATH := device/google/shusky/perf
endif

PRODUCT_COPY_FILES += \
	$(TARGET_VENDOR_PERF_CONFIG_PATH)/powerhint-$(TARGET_DEVICE).json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json
