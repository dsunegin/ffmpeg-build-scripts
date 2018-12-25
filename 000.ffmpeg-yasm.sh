#!/bin/bash

# Yasm
# Yasm is an assembler used by x264 and FFmpeg

# Get Dependencies
# Run under root
sudo yum install autoconf automake bzip2 cmake freetype-devel gcc gcc-c++ git libtool make mercurial pkgconfig zlib-devel


if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
if test -d $HOME/ffmpeg_sources/yasm;
    then rm -rf $HOME/ffmpeg_sources/yasm;
fi

cd ~/ffmpeg_sources

git clone --depth 1 git://github.com/yasm/yasm.git
cd yasm
autoreconf -fiv
./configure --prefix="$HOME/ffmpeg_build" --bindir="$HOME/bin"
make
make install
make distclean