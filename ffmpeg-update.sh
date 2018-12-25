#!/bin/bash

# Updating FFmpeg
# Development of FFmpeg is active and an occasional update can give you new features and bug fixes. 
# First, remove the old files and then update the dependencies:

if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
cd ~/ffmpeg_sources

# rm -rf ~/ffmpeg_build ~/bin/{ffmpeg,ffprobe,ffserver,lame,vsyasm,x264,x265,yasm,ytasm}

#sudo yum install autoconf automake cmake gcc gcc-c++ git libtool make mercurial nasm pkgconfig zlib-devel

echo ""
echo "To Update ffmpeg:"
echo "Follow	http://trac.ffmpeg.org/wiki/CompilationGuide/Centos#Updating"
echo ""