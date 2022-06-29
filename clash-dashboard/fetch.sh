#!/bin/bash

set -x

if [ ! -d "src" ]; then
    git clone --depth=1 https://github.com/Dreamacro/clash-dashboard.git src
fi

cd src
git pull