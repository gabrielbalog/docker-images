#!/bin/sh

path="$(realpath "$(dirname "$BASH_SOURCE")")"

cp firefox-nightly.desktop ~/.local/share/applications/firefox-nightly.desktop
sed -i "s|<dir>|$path|" ~/.local/share/applications/firefox-nightly.desktop
