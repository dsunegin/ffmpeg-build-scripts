# ffmpeg-build-scripts

Compile FFmpeg on CentOS. Should also work for recent Red Hat Enterprise Linux (RHEL) and Fedora

## Supported Codecs
* x264: H.264 (MPEG-4 AVC)
* x265: H.265 Video Codec
* fdk_aac: Fraunhofer FDK AAC Codec 
* xvidcore: MPEG-4 video coding standard
* webm: WebM is a video file format
* mp3: MPEG-1 or MPEG-2 Audio Layer III
* ogg: Free, open container format
* vorbis: Lossy audio compression format

Installation
------------
```bash
git clone https://github.com/dsunegin/ffmpeg-build-scripts.git
cd ffmpeg-build-scripts
```

Usage
------

```bash
./000.ffmpeg-yasm.sh
./001.ffmpeg-nasm.sh
./010.ffmpeg-libx264.sh
./020.ffmpeg-libx265.sh
./030.ffmpeg-libfdk_aac.sh
./040.ffmpeg-libmp3lame.sh
./050.ffmpeg-libopus.sh
./060.ffmpeg-libogg.sh
./070.ffmpeg-libvorbis.sh
./080.ffmpeg-libvpx.sh
./ffmpeg-build.sh
```

