#!/bin/bash

set -e
cd "$(dirname "$BASH_SOURCE")"

x11docker="$1"
if [ -z "$x11docker" ]; then
    x11docker="x11docker"
fi

image=${PWD##*/}

eval "$x11docker" --preset=browser $image
