#!/bin/bash

sed '2d' ~/.gitconfig > .gitconfig
cp ~/.config/fish/config.fish config.fish
cp /Users/ethan/Library/Application\ Support/Code/User/settings.json vscode-settings.json
