#!/bin/bash

for d in */ ; do
    echo "$d"
    cd $d
    [ -f build.sh ] && ./build.sh || echo "Not found"
    cd ..
done