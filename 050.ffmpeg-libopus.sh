#!/bin/bash

# libopus
# Opus audio decoder and encoder.
# Requires ffmpeg to be configured with --enable-libopus

if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
if test -d $HOME/ffmpeg_sources/opus;
    then rm -rf $HOME/ffmpeg_sources/opus;
fi

cd ~/ffmpeg_sources

git clone git://git.opus-codec.org/opus.git
cd opus
autoreconf -fiv
./configure --prefix="$HOME/ffmpeg_build" --disable-shared
make
make install