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

ifeq ($(CAMERA_PRODUCT),)
$(error CAMERA_PRODUCT is not set.)
endif

# go/lyric-soong-variables
$(call soong_config_set,lyric,camera_hardware,$(CAMERA_PRODUCT))
$(call soong_config_set,lyric,tuning_product,$(CAMERA_PRODUCT))
$(call soong_config_set,google3a_config,target_device,$(CAMERA_PRODUCT))
