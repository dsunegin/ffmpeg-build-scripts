# ffmpeg-build-scripts

Compile FFmpeg on CentOS from source. Should also work for recent Red Hat Enterprise Linux (RHEL) and Fedora.
>  Adapted from the build steps in this guide [Compile FFmpeg on CentOS](http://trac.ffmpeg.org/wiki/CompilationGuide/Centos)

## Overview

Compilation creates several directories in home directory of current user:
* `ffmpeg_sources` – Where the source files will be downloaded. This can be deleted if desired when finished with the script.
* `ffmpeg_build` – Where the files will be built and libraries installed. This can be deleted if desired when finished with the script.
* `bin` – Where the resulting binaries (`ffmpeg`, `ffprobe`, `x264`, `x265`) will be installed.

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
Run scripts sequentially:
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
Compilation is now complete and `ffmpeg` (also `ffprobe`, `lame`, `x265` and `x264`) should now be ready to use.
 Binaries located in directory `~/bin`

> * ffserver has been [removed on 2018-01-06](https://trac.ffmpeg.org/wiki/ffserver).
> * Keep the ffmpeg_sources directory and all contents if you intend to **Update**

