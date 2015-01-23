# Inherit common JTOSP stuff
$(call inherit-product, vendor/jtosp/config/common.mk)

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Include JTOSP audio files
include vendor/jtosp/config/jtosp_audio.mk

# Include JTOSP LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/jtosp/overlay/dictionaries

# Optional JTOSP packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    SoundRecorder \
    PhotoPhase

PRODUCT_PACKAGES += \
    VideoEditor \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer

# Extra tools in JTOSP
PRODUCT_PACKAGES += \
    vim \
    zip \
    unrar
