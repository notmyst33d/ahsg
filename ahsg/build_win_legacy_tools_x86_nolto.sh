#!/usr/bin/env bash
scons \
    -j$(nproc --all) \
    CC=i686-w64-mingw32-gcc \
    CXX=i686-w64-mingw32-g++ \
    LINK=i686-w64-mingw32-g++ \
    LINKFLAGS="-L$(pwd)/ahsg/lib" \
    arch=x86 \
    bits=32 \
    platform=windows \
    target_win_version=0x0501 \
    target=release_debug \
    optimize=speed \
    tools=yes \
    $@
