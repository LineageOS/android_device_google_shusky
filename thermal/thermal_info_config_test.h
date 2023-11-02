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

#pragma once

#include <string>

#include <gmock/gmock.h>
#include <jsonpb/json_schema_test.h>

#include "thermal_info_config.pb.h"

namespace devices {
namespace shusky {

// JSON schema test wrapper.
class ThermalInfoConfigTest : public android::jsonpb::JsonSchemaTest {
public:
  void SetUp() override {
    JsonSchemaTest::SetUp();
    thermalInfoConfig_ = static_cast<ThermalConfig *>(message());
  }
  ThermalConfig *thermalInfoConfig_ = nullptr;
};

// Individual test checking for sensor name and type as required fields.
TEST_P(ThermalInfoConfigTest, ThermalConfigRequiredFields) {
  std::string error;

  // Checks that no unknown fields are introduced.
  EXPECT_TRUE(android::jsonpb::AllFieldsAreKnown(*object_, json_, &error))
      << "File: " << file_path_ << ": " << error;

  // Check all Sensors have a Name and Type.
  for (int i = 0; i < thermalInfoConfig_->sensors_size(); ++i) {
    auto &&sensor = thermalInfoConfig_->sensors(i);
    EXPECT_FALSE(sensor.name().empty())
        << "No name for sensor #" << i << " in " << file_path_;
    EXPECT_FALSE(sensor.type().empty())
        << "No type for sensor " << sensor.name() << " in " << file_path_;
  }
};

} // namespace shusky
} // namespace devices