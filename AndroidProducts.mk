#
# Copyright (C) 2019 The Android Open-Source Project
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

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_ripcurrent.mk \
    $(LOCAL_DIR)/aosp_ripcurrent_fullmte.mk \
    $(LOCAL_DIR)/factory_ripcurrent.mk \
    $(LOCAL_DIR)/aosp_husky.mk \
    $(LOCAL_DIR)/aosp_husky_61_pgagnostic.mk \
    $(LOCAL_DIR)/aosp_husky_fullmte.mk \
    $(LOCAL_DIR)/aosp_husky_pgagnostic.mk \
    $(LOCAL_DIR)/factory_husky.mk \
    $(LOCAL_DIR)/aosp_shiba.mk \
    $(LOCAL_DIR)/aosp_shiba_61_pgagnostic.mk \
    $(LOCAL_DIR)/aosp_shiba_fullmte.mk \
    $(LOCAL_DIR)/aosp_shiba_pgagnostic.mk \
    $(LOCAL_DIR)/factory_shiba.mk \
    $(LOCAL_DIR)/lineage_husky.mk \
    $(LOCAL_DIR)/lineage_shiba.mk

COMMON_LUNCH_CHOICES := \
    aosp_ripcurrent-trunk_staging-userdebug \
    aosp_husky-trunk_staging-userdebug \
    aosp_shiba-trunk_staging-userdebug
