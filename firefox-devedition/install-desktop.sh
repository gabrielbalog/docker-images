#!/bin/sh

path="$(realpath "$(dirname "$BASH_SOURCE")")"

cp devedition.desktop ~/.local/share/applications/devedition.desktop
sed -i "s|<dir>|$path|" ~/.local/share/applications/devedition.desktop
