#!/bin/bash

for d in */ ; do
    echo "$d"
    cd $d
    [ -f install-desktop.sh ] && ./install-desktop.sh || echo "Not found"
    cd ..
done