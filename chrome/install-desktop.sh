#!/bin/sh

path="$(realpath "$(dirname "$BASH_SOURCE")")"

cp app.desktop ~/.local/share/applications/${PWD##*/}.desktop
sed -i "s|<dir>|$path|" ~/.local/share/applications/${PWD##*/}.desktop
