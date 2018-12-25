#!/bin/bash

# Nasm
# Nasm is an assembler used by x264 and FFmpeg

# Get Dependencies
# Run under root
sudo yum install autoconf automake bzip2 cmake freetype-devel gcc gcc-c++ git libtool make mercurial pkgconfig zlib-devel
# Remove OLD version of nasm if installed
sudo yum remove nasm

if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
if test -d $HOME/ffmpeg_sources/nasm-2.13.02;
    then rm -rf $HOME/ffmpeg_sources/nasm-2.13.02;
fi

cd ~/ffmpeg_sources

curl -O -L http://www.nasm.us/pub/nasm/releasebuilds/2.13.02/nasm-2.13.02.tar.bz2
tar xjvf nasm-2.13.02.tar.bz2
cd nasm-2.13.02
./autogen.sh
./configure --prefix="$HOME/ffmpeg_build" --bindir="$HOME/bin"
make
make install