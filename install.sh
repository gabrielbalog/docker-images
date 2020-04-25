#!/bin/sh

for d in */ ; do
    cd $d
    if [ -f app.desktop ]; then
        path="$(realpath "$(dirname "$BASH_SOURCE")")"
        echo $d
        cp app.desktop ~/.local/share/applications/${PWD##*/}.desktop
        sed -i "s|<dir>|$path|" ~/.local/share/applications/${PWD##*/}.desktop
    else 
        echo "Not found"
    fi
    cd ..
done