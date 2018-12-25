#!/bin/bash

# libvps
# VP8/VP9 video encoder
# Requires ffmpeg to be configured with --enable-libvpx

if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
if test -d $HOME/ffmpeg_sources/libvpx;
    then rm -rf $HOME/ffmpeg_sources/libvpx;
fi

cd ~/ffmpeg_sources

git clone --depth 1 https://chromium.googlesource.com/webm/libvpx.git
cd libvpx
#./configure --prefix="$HOME/ffmpeg_build" --disable-examples
./configure --prefix="$HOME/ffmpeg_build" --disable-examples --disable-unit-tests --enable-vp9-highbitdepth --as=yasm
make
make install
make clean