#!/bin/bash

# libmp3lame
# MP3 audio encoder
# Requires ffmpeg to be configured with --enable-libmp3lame

if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
if test -d $HOME/ffmpeg_sources/lame-3.100;
    then rm -rf $HOME/ffmpeg_sources/lame-3.100;
fi

cd ~/ffmpeg_sources

curl -L -O http://downloads.sourceforge.net/project/lame/lame/3.100/lame-3.100.tar.gz
tar xzvf lame-3.100.tar.gz
cd lame-3.100
./configure --prefix="$HOME/ffmpeg_build" --bindir="$HOME/bin" --disable-shared --enable-nasm
make
make install