LOCAL_PATH := jcrom/asus/flo

PRODUCT_PROPERTY_OVERRIDES += persist.sys.voice.capable=false
PRODUCT_PROPERTY_OVERRIDES += persist.sys.sms.capable=false

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.ui.phone=600 \
    persist.sys.ui.tablet=320 \
    persist.sys.ui.phablet=286

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.ui.select=1

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/system/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml:asus \
	$(LOCAL_PATH)/proprietary/system/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml:asus \
	$(LOCAL_PATH)/proprietary/system/etc/sysconfig/google_build.xml:system/etc/sysconfig/google_build.xml:asus \
	$(LOCAL_PATH)/proprietary/system/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt:asus \
	$(LOCAL_PATH)/proprietary/system/etc/apns-conf.xml:system/etc/apns-conf.xml:asus \
	$(LOCAL_PATH)/proprietary/system/etc/fmas_eq.dat:system/etc/fmas_eq.dat:asus \
	$(LOCAL_PATH)/proprietary/system/lib/soundfx/libfmas.so:system/lib/soundfx/libfmas.so:asus \
	$(LOCAL_PATH)/proprietary/system/lib/libDxHdcp.so:system/lib/libDxHdcp.so:asus \
	$(LOCAL_PATH)/proprietary/system/lib/librefocus.so:system/lib/librefocus.so:asus \
	$(LOCAL_PATH)/proprietary/system/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so:asus \
	$(LOCAL_PATH)/proprietary/system/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so:asus \
	$(LOCAL_PATH)/proprietary/system/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf:asus \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so:asus \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so:asus \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so:asus \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libWVphoneAPI.so:system/vendor/lib/libWVphoneAPI.so:asus \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libfrsdk.so:system/vendor/lib/libfrsdk.so:asus \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so:asus \
	$(LOCAL_PATH)/proprietary/system/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so:asus \
	$(LOCAL_PATH)/proprietary/system/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd:asus \
	$(LOCAL_PATH)/proprietary/system/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd:asus \
	$(LOCAL_PATH)/proprietary/system/media/audio/ui/NFCFailure.ogg:system/media/audio/ui/NFCFailure.ogg:asus \
	$(LOCAL_PATH)/proprietary/system/media/audio/ui/NFCInitiated.ogg:system/media/audio/ui/NFCInitiated.ogg:asus \
	$(LOCAL_PATH)/proprietary/system/media/audio/ui/NFCSuccess.ogg:system/media/audio/ui/NFCSuccess.ogg:asus \
	$(LOCAL_PATH)/proprietary/system/media/audio/ui/NFCTransferComplete.ogg:system/media/audio/ui/NFCTransferComplete.ogg:asus \
	$(LOCAL_PATH)/proprietary/system/media/audio/ui/NFCTransferInitiated.ogg:system/media/audio/ui/NFCTransferInitiated.ogg:asus \
	$(LOCAL_PATH)/proprietary/system/media/audio/ui/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg:asus \
	$(LOCAL_PATH)/proprietary/system/media/audio/ui/audio_end.ogg:system/media/audio/ui/audio_end.ogg:asus \
	$(LOCAL_PATH)/proprietary/system/media/audio/ui/audio_initiate.ogg:system/media/audio/ui/audio_initiate.ogg:asus

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Tejat.ogg \
    ro.config.alarm_alert=Oxygen.ogg \
    fmas.spkr_6ch=35,20,110 \
    fmas.spkr_2ch=35,25 \
    fmas.spkr_angles=10 \
    fmas.spkr_sgain=0 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=1250 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=1000 \
    ro.facelock.use_intro_anim=true \
    ro.media.effect.bgdropper.adj=0.2 \
    camera.flash_off=0 \
    ro.com.widevine.cachesize=16777216 \
    ro.setupwizard.network_required=true

$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage13.mk)

