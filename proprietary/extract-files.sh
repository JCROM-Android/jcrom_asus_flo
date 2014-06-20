#!/bin/bash
echo "Please wait."
wget -nc -q https://dl.google.com/dl/android/aosp/razor-ktu84p-factory-b1b2c0da.tgz
tar zxf razor-ktu84p-factory-b1b2c0da.tgz
cd razor-ktu84p
unzip image-razor-ktu84p.zip
cd ../
./simg2img razor-ktu84p/system.img system.ext4.img
mkdir system
mkdir tmp
sudo mount -o loop -t ext4 system.ext4.img tmp
sync
mkdir -p system/lib/soundfx
mkdir -p system/lib/hw
mkdir -p system/vendor/etc
mkdir -p system/vendor/firmware/discretix
mkdir -p system/vendor/lib/drm
mkdir -p system/vendor/lib/mediadrm
mkdir -p system/vendor/media
mkdir -p system/etc
mkdir -p system/media

cp -a tmp/vendor/etc/audio_effects.conf system/vendor/etc/audio_effects.conf
cp -a tmp/vendor/lib/drm/libdrmwvmplugin.so system/vendor/lib/drm/libdrmwvmplugin.so
cp -a tmp/vendor/lib/mediadrm/libwvdrmengine.so system/vendor/lib/mediadrm/libwvdrmengine.so
cp -a tmp/vendor/lib/libWVStreamControlAPI_L1.so system/vendor/lib/libWVStreamControlAPI_L1.so
cp -a tmp/vendor/lib/libfrsdk.so system/vendor/lib/libfrsdk.so
cp -a tmp/vendor/lib/libwvdrm_L1.so system/vendor/lib/libwvdrm_L1.so
cp -a tmp/vendor/lib/libwvm.so system/vendor/lib/libwvm.so
cp -a tmp/vendor/media/LMspeed_508.emd system/vendor/media/LMspeed_508.emd
cp -a tmp/vendor/media/PFFprec_600.emd system/vendor/media/PFFprec_600.emd
cp -a tmp/etc/apns-conf.xml system/etc/apns-conf.xml
cp -a tmp/etc/audio_effects.conf system/etc/audio_effects.conf
cp -a tmp/etc/fmas_eq.dat system/etc/fmas_eq.dat
cp -a tmp/lib/libDxHdcp.so system/lib/libDxHdcp.so
cp -a tmp/lib/soundfx/libfmas.so system/lib/soundfx/libfmas.so
cp -a tmp/lib/hw/keystore.msm8960.so system/lib/hw/keystore.msm8960.so
cp -a tmp/lib/libgcastv2_base.so system/lib/libgcastv2_base.so
cp -a tmp/lib/libgcastv2_support.so system/lib/libgcastv2_support.so
cp -a tmp/lib/libjgcastservice.so system/lib/libjgcastservice.so
cp -a tmp/lib/libjhead.so system/lib/libjhead.so
cp -a tmp/lib/libjhead_jni.so system/lib/libjhead_jni.so
cp -a tmp/media/bootanimation.zip system/media/bootanimation.zip

sudo umount tmp
rm -rf tmp
rm -rf razor-ktu84p
rm system.ext4.img
