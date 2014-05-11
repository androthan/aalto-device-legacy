# Copyright (C) 2010 The Android Open Source Project
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

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES := \
	device/samsung/aalto/etc/asound.conf:system/etc/asound.conf \
	device/samsung/aalto/etc/gps.conf:system/etc/gps.conf \
	device/samsung/aalto/etc/nvram_net.txt:system/etc/nvram_net.txt \
	device/samsung/aalto/etc/gps.xml:system/vendor/etc/gps.xml \
	device/samsung/aalto/etc/vold.fstab:system/etc/vold.fstab \
	device/samsung/aalto/egl.cfg:system/lib/egl/egl.cfg

# Init files for CyanogenMod boot
PRODUCT_COPY_FILES += \
	device/samsung/aalto/init.rc:root/init.rc \
        device/samsung/aalto/init.aalto.rc:root/init.aalto.rc \
	device/samsung/aalto/ueventd.rc:root/ueventd.rc \
	device/samsung/aalto/ueventd.aalto.rc:root/ueventd.aalto.rc \
	device/samsung/aalto/lpm.rc:root/lpm.rc \
	device/samsung/aalto/recovery.fstab:recovery/root/etc/recovery.fstab

# Init files for CWM recovery boot
PRODUCT_COPY_FILES += \
	device/samsung/aalto/recovery.rc:recovery/root/init.rc \
        device/samsung/aalto/emptyfile:recovery/root/init.aalto.rc \
	device/samsung/aalto/ueventd.rc:recovery/root/ueventd.rc \
	device/samsung/aalto/ueventd.aalto.rc:recovery/root/ueventd.aalto.rc \
	device/samsung/aalto/lpm.rc:recovery/root/lpm.rc

# Prebuilt busybox for CWM
PRODUCT_COPY_FILES += \
	device/samsung/aalto/busybox:utilities/busybox

# Configuration files for audio
PRODUCT_COPY_FILES += \
	device/samsung/aalto/etc/audio/aeqcoe.txt:system/etc/audio/aeqcoe.txt \
	device/samsung/aalto/etc/audio/LVVEFS_Rx_Configuration.txt:system/etc/audio/LVVEFS_Rx_Configuration.txt \
	device/samsung/aalto/etc/audio/LVVEFS_Tx_Configuration.txt:system/etc/audio/LVVEFS_Tx_Configuration.txt \
	device/samsung/aalto/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt \
	device/samsung/aalto/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt \
	device/samsung/aalto/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
	device/samsung/aalto/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
	device/samsung/aalto/etc/audio/situation.txt:system/etc/audio/situation.txt \
	device/samsung/aalto/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
	device/samsung/aalto/etc/audio/srstunning.txt:system/etc/audio/srstunning.txt \
	device/samsung/aalto/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
	device/samsung/aalto/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
	device/samsung/aalto/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
	device/samsung/aalto/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt \
	device/samsung/aalto/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt \
	device/samsung/aalto/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
	device/samsung/aalto/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
	device/samsung/aalto/etc/audio/codec/FMRadioEar.ini:system/etc/audio/codec/FMRadioEar.ini \
	device/samsung/aalto/etc/audio/codec/FMRadioSpk.ini:system/etc/audio/codec/FMRadioSpk.ini \
	device/samsung/aalto/etc/audio/codec/MusicEar.ini:system/etc/audio/codec/MusicEar.ini \
	device/samsung/aalto/etc/audio/codec/MusicEarAmp.ini:system/etc/audio/codec/MusicEarAmp.ini \
	device/samsung/aalto/etc/audio/codec/MusicSpk.ini:system/etc/audio/codec/MusicSpk.ini \
	device/samsung/aalto/etc/audio/codec/MusicSpkAmp.ini:system/etc/audio/codec/MusicSpkAmp.ini \
	device/samsung/aalto/etc/audio/codec/RecHeadSetMic.ini:system/etc/audio/codec/RecHeadSetMic.ini \
	device/samsung/aalto/etc/audio/codec/RecMainMic.ini:system/etc/audio/codec/RecMainMic.ini \
	device/samsung/aalto/etc/audio/codec/RecSubMic.ini:system/etc/audio/codec/RecSubMic.ini \
	device/samsung/aalto/etc/audio/codec/RingtoneEar.ini:system/etc/audio/codec/RingtoneEar.ini \
	device/samsung/aalto/etc/audio/codec/RingtoneSpk.ini:system/etc/audio/codec/RingtoneSpk.ini \
	device/samsung/aalto/etc/audio/codec/VCall3pEar.ini:system/etc/audio/codec/VCall3pEar.ini \
	device/samsung/aalto/etc/audio/codec/VCall4pEar.ini:system/etc/audio/codec/VCall4pEar.ini \
	device/samsung/aalto/etc/audio/codec/VoiceCall3pEar.ini:system/etc/audio/codec/VoiceCall3pEar.ini \
	device/samsung/aalto/etc/audio/codec/VoiceCall4pEar.ini:system/etc/audio/codec/VoiceCall4pEar.ini \
	device/samsung/aalto/etc/audio/codec/VoiceCallBT.ini:system/etc/audio/codec/VoiceCallBT.ini \
	device/samsung/aalto/etc/audio/codec/VoiceCallEarAmp.ini:system/etc/audio/codec/VoiceCallEarAmp.ini \
	device/samsung/aalto/etc/audio/codec/VoiceCallRcv.ini:system/etc/audio/codec/VoiceCallRcv.ini \
	device/samsung/aalto/etc/audio/codec/VoiceCallSpk.ini:system/etc/audio/codec/VoiceCallSpk.ini \
	device/samsung/aalto/etc/audio/codec/VoiceCallSpkAmp.ini:system/etc/audio/codec/VoiceCallSpkAmp.ini \
	device/samsung/aalto/etc/audio/codec/VoiceRecHeadSetMic.ini:system/etc/audio/codec/VoiceRecHeadSetMic.ini \
	device/samsung/aalto/etc/audio/codec/VoiceRecMainMic.ini:system/etc/audio/codec/VoiceRecMainMic.ini \
	device/samsung/aalto/etc/audio/codec/VtCallBT.ini:system/etc/audio/codec/VtCallBT.ini \
	device/samsung/aalto/etc/audio/codec/VtCallEarAmp.ini:system/etc/audio/codec/VtCallEarAmp.ini \
	device/samsung/aalto/etc/audio/codec/VtCallRcv.ini:system/etc/audio/codec/VtCallRcv.ini \
	device/samsung/aalto/etc/audio/codec/VtCallSpk.ini:system/etc/audio/codec/VtCallSpk.ini \
	device/samsung/aalto/etc/audio/codec/VtCallSpkAmp.ini:system/etc/audio/codec/VtCallSpkAmp.ini

# wifi configuration files
PRODUCT_COPY_FILES += \
    device/samsung/aalto/etc/wifi/firmware.bin:system/etc/wifi/firmware.bin \
    device/samsung/aalto/etc/wifi/tiwlan_plt.ini:system/etc/wifi/tiwlan_plt.ini \
    device/samsung/aalto/etc/wifi/softap/ap_firmware.bin:system/etc/wifi/softap/ap_firmware.bin \
    device/samsung/aalto/etc/wifi/softap/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
    device/samsung/aalto/etc/wifi/softap/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini \
    device/samsung/aalto/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini

 
# configuration files
PRODUCT_COPY_FILES += \
    device/samsung/aalto/etc/media_profiles.xml:system/etc/media_profiles.xml

# apns config file
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/samsung/aalto/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
	device/samsung/aalto/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
	device/samsung/aalto/keylayout/sec_power_key.kl:system/usr/keylayout/sec_power_key.kl \
	device/samsung/aalto/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Packages
PRODUCT_PACKAGES := \
    libcamera \
    com.android.future.usb.accessory \
    bdaddr_read \
    utility_make_ext4fs \
    bootmenu_busybox \
    busybox \
    mmcutils \
    libext4_utils \
    ext4_utils \
    bdaddr_read

# OMX components
PRODUCT_PACKAGES += \
	libOMX.TI.AAC.decode \
	AacDecTest \
	libOMX.TI.AAC.encode \
	AacEncoder_Test \
	libOMX.TI.MP3.decode \
	Mp3DecTest \
	libOMX.TI.AMR.encode \
	NBAMREncoder_Test \
	libOMX.TI.WBAMR.decode \
	WBAmrDecTest_common \
	libOMX.TI.WBAMR.encode \
	WBAMREncoder_Test \
	libOMX.TI.WMA.decode \
	WmaDecTest_common \
	tiomxplayer \
	libVendor_ti_omx \
	01_Vendor_ti_omx \
	01_Vendor_ti_omx.cfg \
	JpegTestCommon \
	JPEGTestEnc_common \
	libLCML \
	libOMX_Core \
	OMXPolicyManager \
	libPERF \
	libRAM \
	OMXResourceManager \
	libOMX_ResourceManagerProxy \
	libVendor_ti_omx_config_parser \
	libOMX.TI.VPP \
	VPPTest_common \
	VidDecTest_common \
	libOMX.TI.Video.Decoder \
	VideoEncTest \
	libOMX.TI.Video.encoder \
	libOMX.TI.AMR.decode \
	AmrDecTest_common \
	libOMX.TI.JPEG.encoder \
	libOMX.TI.JPEG.decoder \
	libcamera \
	libyuv \
	libfakecameraadapter \
	libbridge \
	libqos \
	dspexec \
	faultapp.out \
	dmmcopy.out \
	instutility.out \
	ping.out \
	qostest.out \
	scale.out \
	scale_dyn.out \
	strmcopy.out \
	strmcopy_dyn.out \
	zerocopymsg.out \
	cexec.out \
	dynreg.out \
	gsm0710muxd \
	lights.omap3 \
	libopencorehw \
	overlay.omap3 \
	libtiutils \
	camera_test \
	libOMX.TI.h264.splt.Encoder \
	libOMX.TI.mp4.splt.Encoder \
	libOMX.ITTIAM.AAC.decode \
	ia_heaacv2_dec_lib \
	libOMX.ITTIAM.AAC.encode \
	ia_aac_enc_lib \
	libOMX.TI.720P.Decoder \
	ittiam_h264 \
	ittiam_wmv9 \
	libOMX.TI.720P.Encoder


# OpenMAX IL configuration
TI_OMX_POLICY_MANAGER := hardware/ti/omx/system/src/openmax_il/omx_policy_manager
PRODUCT_COPY_FILES += \
    $(TI_OMX_POLICY_MANAGER)/src/policytable.tbl:system/etc/policytable.tbl \
    $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    libomap_mm_library_jni

FRAMEWORKS_BASE_SUBDIRS += \
    $(addsuffix /java, omapmmlib )

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=tiwlan0 \
       wifi.supplicant_scan_interval=180 \
       ro.telephony.ril_class=samsung \
       ro.telephony.sends_barcount=1 \
       mobiledata.interfaces=pdp0,eth0,gprs,ppp0 \
       dalvik.vm.heapsize=64m \
       persist.service.usb.setting=0 \
       dev.sfbootcomplete=0

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false \
    ro.config.hw_quickpoweron=true \
    persist.sys.shutdown.mode=hibernate \
    dev.bootcomplete=0 \
    ro.ril.power_collapse=1 \
    pm.sleep_mode=1 \
    ro.mot.eri.losalert.delay=1000 \
    windowsmgr.max_events_per_sec=84 \
    ro.max.fling_velocity=12000\
    ro.min.fling_velocity=8000 \
    persist.sys.purgeable_assets=1 

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Screen density is actually considered a locale (since it is taken into account
# the the build-time selection of resources). The product definitions including
# this file must pay attention to the fact that the first entry in the final
# PRODUCT_LOCALES expansion must not be a density.
PRODUCT_LOCALES := mdpi

# kernel modules for ramdisk
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/samsung/aalto/modules/ramdisk,root/lib/modules)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/samsung/aalto/modules/ramdisk,recovery/root/lib/modules)

# other kernel modules not in ramdisk
PRODUCT_COPY_FILES += $(foreach module,\
	$(filter-out $(RAMDISK_MODULES),$(wildcard device/samsung/aalto/modules/*.ko)),\
	$(module):system/lib/modules/$(notdir $(module)))

LOCAL_KERNEL := device/samsung/aalto/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product, vendor/samsung/aalto/aalto-vendor.mk)
