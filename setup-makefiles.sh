#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
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

set -e

export INITIAL_COPYRIGHT_YEAR=2019

export DEVICE=camera
export VENDOR=extra

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

LINEAGE_ROOT="$MY_DIR"/../..

HELPER="$LINEAGE_ROOT"/vendor/lineage/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Initialize the helper for HwCamera2
setup_vendor "$DEVICE" "$VENDOR" "$LINEAGE_ROOT" true

# Copyright headers
write_headers "berkeley"

# HwCamera2 + libs
write_makefiles "$MY_DIR"/proprietary-files.txt

# Make HwCamera2 override Snap and AOSP Camera2
sed -i 's/\(HwCamera2.apk\)/\1\nLOCAL_OVERRIDES_PACKAGES := Camera2 Snap/' "$ANDROIDMK"

# We are done with common
write_footers
