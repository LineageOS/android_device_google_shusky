/*
 * Copyright (C) 2023 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <android-base/file.h>
#include <gtest/gtest.h>
#include <jsonpb/json_schema_test.h>

#include "thermal_info_config_test.h"

using namespace ::android::jsonpb;
using ::android::base::GetExecutableDirectory;

namespace devices {
namespace shusky {

template <typename T>
JsonSchemaTestConfigFactory MakeTestParam(const std::string &path) {
  return android::jsonpb::MakeTestParam<T>(GetExecutableDirectory() + path);
}

// Make test suite for thermal info config schema.
INSTANTIATE_TEST_SUITE_P(
    ThermalSuite, ThermalInfoConfigTest,
    ::testing::Values(
        MakeTestParam<ThermalConfig>("/thermal_info_config_husky.json"),
        MakeTestParam<ThermalConfig>("/thermal_info_config_shiba.json"),
        MakeTestParam<ThermalConfig>("/thermal_info_config_charge_husky.json"),
        MakeTestParam<ThermalConfig>("/thermal_info_config_charge_shiba.json"),
        MakeTestParam<ThermalConfig>("/thermal_info_config_ripcurrent.json"),
        MakeTestParam<ThermalConfig>(
            "/thermal_info_config_charge_ripcurrent.json")));

// Ignores a formatting check (b/c 0.0 != 0 textually)
GTEST_ALLOW_UNINSTANTIATED_PARAMETERIZED_TEST(JsonSchemaTest);

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}

} // namespace shusky
} // namespace devices
