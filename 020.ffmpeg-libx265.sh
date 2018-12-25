#!/bin/bash

# libx265
# H.265/HEVC video encoder. See the H.265 Encoding Guide for more information and usage examples.
# Requires ffmpeg to be configured with --enable-gpl --enable-libx265

if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
if test -d $HOME/ffmpeg_sources/x265;
    then rm -rf $HOME/ffmpeg_sources/x265;
fi

cd ~/ffmpeg_sources

hg clone https://bitbucket.org/multicoreware/x265
cd ~/ffmpeg_sources/x265/build/linux
cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="$HOME/ffmpeg_build" -DENABLE_SHARED:bool=off ../../source 
make
make install

cp $HOME/ffmpeg_build/bin/x265 $HOME/bin