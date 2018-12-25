#!/bin/bash

# libogg
# Ogg bitstream library. Required by libtheora and libvorbis

if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
if test -d $HOME/ffmpeg_sources/libogg-1.3.3;
    then rm -rf $HOME/ffmpeg_sources/libogg-1.3.3;
fi

cd ~/ffmpeg_sources

curl -O -L http://downloads.xiph.org/releases/ogg/libogg-1.3.3.tar.gz
tar xzvf libogg-1.3.3.tar.gz
cd libogg-1.3.3
./configure --prefix="$HOME/ffmpeg_build" --disable-shared
make
make install