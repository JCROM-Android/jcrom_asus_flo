#!/bin/bash
echo "Download and Deodexing... Please wait."
wget -nc -q https://dl.google.com/dl/android/aosp/razor-krt16o-factory-d9e7d441.tgz
tar zxf razor-krt16o-factory-d9e7d441.tgz
cd razor-krt16o
unzip image-razor-krt16o.zip
cd ../
./simg2img razor-krt16o/system.img system.ext4.img
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
cp -a tmp/media/bootanimation.zip system/media/bootanimation.zip

sudo umount tmp
rm -rf tmp
rm -rf razor-krt16o
rm system.ext4.img

