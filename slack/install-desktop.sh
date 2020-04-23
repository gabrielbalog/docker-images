#!/bin/sh

path="$(realpath "$(dirname "$BASH_SOURCE")")"

cp slack.desktop ~/.local/share/applications/slack.desktop
sed -i "s|<dir>|$path|" ~/.local/share/applications/slack.desktop
