#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR

if [ ! -z ${BITS+x} ]; then
    ../dev/download_libs.sh -p emscripten -b -a $BITS $@
else
    ../dev/download_libs.sh -p emscripten -b -n $@
fi
