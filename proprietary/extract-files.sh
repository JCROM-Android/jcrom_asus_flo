#!/bin/bash
echo "Please wait..."
wget -nc -q https://dl.google.com/dl/android/aosp/razor-lrx21p-factory-ba55c6ab.tgz
tar zxf razor-lrx21p-factory-ba55c6ab.tgz
rm razor-lrx21p-factory-ba55c6ab.tgz
cd razor-lrx21p
unzip image-razor-lrx21p.zip
cd ../
./simg2img razor-lrx21p/system.img system.ext4.img
mkdir tmp
sudo mount -o loop -t ext4 system.ext4.img tmp
sync
mkdir -p system/etc/preferred-apps
mkdir -p system/etc/sysconfig
mkdir -p system/etc/updatecmds
mkdir -p system/lib/soundfx
mkdir -p system/lib/hw
mkdir -p system/vendor/etc
mkdir -p system/vendor/lib/drm
mkdir -p system/vendor/lib/mediadrm
mkdir -p system/vendor/media
mkdir -p system/media
mkdir -p system/media/audio/ringtones
mkdir -p system/media/audio/ui

cp -a tmp/etc/preferred-apps/google.xml system/etc/preferred-apps/google.xml
cp -a tmp/etc/sysconfig/google.xml system/etc/sysconfig/google.xml
cp -a tmp/etc/sysconfig/google_build.xml system/etc/sysconfig/google_build.xml
cp -a tmp/etc/updatecmds/google_generic_update.txt system/etc/updatecmds/google_generic_update.txt
cp -a tmp/etc/apns-conf.xml system/etc/apns-conf.xml
cp -a tmp/etc/fmas_eq.dat system/etc/fmas_eq.dat
cp -a tmp/lib/soundfx/libfmas.so system/lib/soundfx/libfmas.so
cp -a tmp/lib/libDxHdcp.so system/lib/libDxHdcp.so
cp -a tmp/lib/librefocus.so system/lib/librefocus.so
cp -a tmp/lib/libvcdecoder_jni.so system/lib/libvcdecoder_jni.so
cp -a tmp/lib/libvorbisencoder.so system/lib/libvorbisencoder.so
cp -a tmp/vendor/etc/audio_effects.conf system/vendor/etc/audio_effects.conf
cp -a tmp/vendor/lib/drm/libdrmwvmplugin.so system/vendor/lib/drm/libdrmwvmplugin.so
cp -a tmp/vendor/lib/mediadrm/libwvdrmengine.so system/vendor/lib/mediadrm/libwvdrmengine.so
cp -a tmp/vendor/lib/libWVStreamControlAPI_L1.so system/vendor/lib/libWVStreamControlAPI_L1.so
cp -a tmp/vendor/lib/libWVphoneAPI.so system/vendor/lib/libWVphoneAPI.so
cp -a tmp/vendor/lib/libfrsdk.so system/vendor/lib/libfrsdk.so
cp -a tmp/vendor/lib/libwvdrm_L1.so system/vendor/lib/libwvdrm_L1.so
cp -a tmp/vendor/lib/libwvm.so system/vendor/lib/libwvm.so
cp -a tmp/vendor/media/LMspeed_508.emd system/vendor/media/LMspeed_508.emd
cp -a tmp/vendor/media/PFFprec_600.emd system/vendor/media/PFFprec_600.emd
cp -a tmp/media/audio/ui/NFCFailure.ogg system/media/audio/ui/NFCFailure.ogg
cp -a tmp/media/audio/ui/NFCInitiated.ogg system/media/audio/ui/NFCInitiated.ogg
cp -a tmp/media/audio/ui/NFCSuccess.ogg system/media/audio/ui/NFCSuccess.ogg
cp -a tmp/media/audio/ui/NFCTransferComplete.ogg system/media/audio/ui/NFCTransferComplete.ogg
cp -a tmp/media/audio/ui/NFCTransferInitiated.ogg system/media/audio/ui/NFCTransferInitiated.ogg
cp -a tmp/media/audio/ui/VideoStop.ogg system/media/audio/ui/VideoStop.ogg
cp -a tmp/media/audio/ui/audio_end.ogg system/media/audio/ui/audio_end.ogg
cp -a tmp/media/audio/ui/audio_initiate.ogg system/media/audio/ui/audio_initiate.ogg

sudo umount tmp
rm -rf tmp
rm -rf razor-lrx21p
rm system.ext4.img
