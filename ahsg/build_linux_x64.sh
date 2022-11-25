#!/usr/bin/env bash
scons \
    -j$(nproc --all) \
    arch=x64 \
    platform=x11 \
    target=release \
    optimize=size \
    use_lto=yes \
    tools=no \
    debug_symbols=no \
    disable_3d=yes \
    $(cat ahsg/flags.txt) \
    $@
