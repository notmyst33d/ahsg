#!/usr/bin/env bash
scons \
    -j$(nproc --all) \
    arch=x64 \
    bits=64 \
    platform=x11 \
    target=release \
    optimize=size \
    tools=no \
    debug_symbols=no \
    disable_3d=yes \
    $(cat ahsg/flags.txt) \
    $@
