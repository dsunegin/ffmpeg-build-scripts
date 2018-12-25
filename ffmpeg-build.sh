#!/bin/bash

# FFmpeg
# Complete Compilation and get ready to use:
# ffmpeg (also ffprobe, lame, x265 and x264)

# Notice:
# ffserver has been removed on 2018-01-06. If you still need it checkout commit 2ca65fc or use the 3.4 release branch.

if ! test -d $HOME/ffmpeg_sources;
    then mkdir $HOME/ffmpeg_sources;
fi
if test -d $HOME/ffmpeg_sources/ffmpeg;
    then rm -rf $HOME/ffmpeg_sources/ffmpeg;
fi

cd ~/ffmpeg_sources

git clone http://source.ffmpeg.org/git/ffmpeg.git;
cd ffmpeg

PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" \
./configure \
--prefix="$HOME/ffmpeg_build" \
--extra-cflags="-I$HOME/ffmpeg_build/include" \
--extra-ldflags="-L$HOME/ffmpeg_build/lib" \
--extra-libs=-lpthread \
--extra-libs=-lm \
--bindir="$HOME/bin" \
--pkg-config-flags="--static" \
--enable-gpl \
--enable-nonfree \
--enable-libfdk-aac \
--enable-libfreetype \
--enable-libmp3lame \
--enable-libopus \
--enable-libvorbis \
--enable-libvpx \
--enable-libx264 \
--enable-libx265 \
--disable-vaapi

make
make install
make distclean
hash -r

echo ""
echo "Compilation is now complete and ffmpeg (also ffprobe, lame, x265 and x264) should now be ready to use."
echo "Warning:"
echo "          ffserver has been removed on 2018-01-06. If you still need it checkout commit 2ca65fc or use the 3.4 release branch."
echo "Tip:"
echo "          Keep the ffmpeg_sources directory and all contents if you intend to [#Update]"
echo ""
echo [$HOME/bin]"# ls -a"
echo `ls -a $HOME/bin`
echo ""

