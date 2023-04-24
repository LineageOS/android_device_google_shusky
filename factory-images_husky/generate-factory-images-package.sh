#!/bin/sh

# Copyright 2023 The Android Open Source Project
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

source ../../../common/clear-factory-images-variables.sh
BUILD=9995562
DEVICE=husky
PRODUCT=husky
VERSION=UD1A.230424.002
SRCPREFIX=signed-
BOOTLOADER=ripcurrent-14.0-9980179
RADIO=g5300i-230414-230420-B-9979344
source ../../../common/generate-factory-images-common.sh
