#!/bin/bash

# libfdk_aac
# AAC audio encoder.
# Requires ffmpeg to be configured with --enable-libfdk-aac (and --enable-nonfree if you also included --enable-gpl).

if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
if test -d $HOME/ffmpeg_sources/fdk-aac;
    then rm -rf $HOME/ffmpeg_sources/fdk-aac;
fi

cd ~/ffmpeg_sources

git clone --depth 1 git://git.code.sf.net/p/opencore-amr/fdk-aac
cd fdk-aac
autoreconf -fiv
./configure --prefix="$HOME/ffmpeg_build" --disable-shared
make
make install