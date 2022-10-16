#!/bin/bash

echo "Extracting plasma colors..."

rgb_accent=`kreadconfig5 --file kdeglobals --group Colors:Selection --key BackgroundNormal`
rgb_window=`kreadconfig5 --file kdeglobals --group WM --key activeBackground`

hex_accent=`java Hex "$rgb_accent"`
echo $rgb_accent
echo $hex_accent

hex_window=`java Hex "$rgb_window"`
echo $rgb_window
echo $hex_window

./install_theme.sh "$hex_accent" "$hex_window"
