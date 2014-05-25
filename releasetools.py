# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2012 The CyanogenMod Project
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

"""Custom OTA commands for YP-GS1"""

import common
import os
import shutil

LOCAL_DIR = os.path.dirname(os.path.abspath(__file__))
TARGET_DIR = os.getenv('OUT')
UTILITIES_DIR = os.path.join(TARGET_DIR, 'utilities')

def FullOTA_Assertions(info):
  info.output_zip.write(os.path.join(UTILITIES_DIR, "busybox"), "busybox")

  info.script.AppendExtra(
        ('package_extract_file("busybox", "/tmp/busybox");\n'
         'set_perm(0, 0, 0777, "/tmp/busybox");'))

  # Make common releasetools copy boot.img verbatim
  kernel_path = os.path.join(info.input_tmp, TARGET_DIR, "boot.img")
  prebuilt_dir = os.path.join(info.input_tmp, "BOOTABLE_IMAGES")
  prebuilt_path = os.path.join(prebuilt_dir, "boot.img")
  os.mkdir(prebuilt_dir)
  shutil.copyfile(kernel_path, prebuilt_path)

def FullOTA_InstallEnd(info):
  info.script.script = [cmd for cmd in info.script.script if not "write_raw_image" in cmd]
