#!/bin/bash

echo "Pulling ayu-base-theme files and putting in .vscode/extensions"

mkdir -p ~/.vscode/extensions/io.github.vedantwankhade.vscode-plasma-sync

curl https://raw.githubusercontent.com/VedantWankhade/vscode-ayu-base/master/ayu-light.json --output ~/.vscode/extensions/io.github.vedantwankhade.vscode-plasma-sync/ayu-light.json
curl https://raw.githubusercontent.com/VedantWankhade/vscode-ayu-base/master/package.json --output ~/.vscode/extensions/io.github.vedantwankhade.vscode-plasma-sync/package.json

