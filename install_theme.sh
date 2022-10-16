#!/bin/bash

echo "Installing...."

cd ~/.vscode/extensions/io.github.vedantwankhade.vscode-plasma-sync/

echo "Setting up theme metadata"

sed -i 's/THEME_NAME/vscode-plasma-sync/' package.json

sed -i 's/THEME_DISPLAY_NAME/VSCode Plasma Sync/' package.json

sed -i 's/THEME_DISCRIPTION/VSCode thme synced with Plasma colors/' package.json

sed -i 's/PUBLISHER/VedantWankhade/' package.json

sed -i 's/LIGHT_THEME_LABEL/VSCode Plasma Sync/' package.json

echo "Setting up the theme colors...."

sed -i "s/ACCENT_BACKGROUND/$1/g" ayu-light.json

sed -i "s/WINDOW_BACKGROUND/$2/g" ayu-light.json

sed -i "s/TERMINAL_BACKGROUND/fff/g" ayu-light.json

sed -i "s/EDITOR_BACKGROUND/fff/g" ayu-light.json

