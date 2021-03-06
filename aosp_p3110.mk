#
# Copyright 2013 The Android Open-Source Project
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

# Use 44.1 kHz UI sounds
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage13.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/p3110/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := aosp_p3110
PRODUCT_DEVICE := p3110
PRODUCT_BRAND := Android
PRODUCT_MODEL := GT-P3110
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=espressowifixx \
    TARGET_DEVICE=espressowifi
