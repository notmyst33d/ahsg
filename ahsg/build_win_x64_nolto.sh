#!/usr/bin/env bash
scons \
    -j$(nproc --all) \
    CC=x86_64-w64-mingw32-gcc \
    CXX=x86_64-w64-mingw32-g++ \
    LINK=x86_64-w64-mingw32-g++ \
    arch=x64 \
    platform=windows \
    target=release \
    optimize=size \
    tools=no \
    debug_symbols=no \
    disable_3d=yes \
    $(cat ahsg/flags.txt) \
    $@
