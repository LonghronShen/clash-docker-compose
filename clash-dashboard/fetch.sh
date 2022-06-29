#!/bin/bash

set -x

build_from_src=${0:-0}

if [ ! -d "src" ]; then
    if [ build_from_src -ne 0 ]; then
        git clone --depth=1 https://github.com/Dreamacro/clash-dashboard.git src
    else
        git clone -b gh-pages --depth 1 https://github.com/Dreamacro/clash-dashboard src/dist
    fi
fi

cd src
git pull || true

if [ -d dist ]; then
    cd dist
    git pull || true
fi