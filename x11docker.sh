#!/bin/bash

if [ -z $(which x11docker) ]; then
    echo "Installing x11docker"
    curl -fsSL https://raw.githubusercontent.com/mviereck/x11docker/master/x11docker | sudo bash -s -- --update
fi

echo "Creating Presets"

mkdir -p ~/.config/x11docker/preset

echo "
--gpu
--pulseaudio
--clipboard
--share $HOME/Downloads
--home
" > ~/.config/x11docker/preset/browser

echo "
--gpu
--clipboard
--share $HOME
--home
" > ~/.config/x11docker/preset/ide

echo "
--gpu
--clipboard
--share $HOME
" > ~/.config/x11docker/preset/file