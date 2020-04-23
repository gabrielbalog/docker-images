#!/bin/sh

path="$(realpath "$(dirname "$BASH_SOURCE")")"

cp firefox.desktop ~/.local/share/applications/firefox.desktop
sed -i "s|<dir>|$path|" ~/.local/share/applications/firefox.desktop
