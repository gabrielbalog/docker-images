#!/bin/bash

for d in */ ; do
    echo "$d"
    cd $d
    [ -f update.sh ] && ./update.sh || echo "Not found"
    cd ..
done