#!/bin/bash

# libx264
# H.264 video encoder. See the H.264 Encoding Guide for more information and usage examples.
# Requires ffmpeg to be configured with --enable-gpl --enable-libx264.

if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
if test -d $HOME/ffmpeg_sources/x264;
    then rm -rf $HOME/ffmpeg_sources/x264;
fi

cd ~/ffmpeg_sources

git clone --depth 1 git://git.videolan.org/x264
cd x264
PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" ./configure --prefix="$HOME/ffmpeg_build" --bindir="$HOME/bin" --enable-static
make
make install