#!/bin/sh

# script starts
echo "dotfiles uninstallation script starts"

# zshell configs
rm ~/.zshrc

# git global ignore configs
rm ~/.gitignore_global

# ideavim configs
rm ~/.ideavimrc

# vscode configs
rm ~/Library/Application\ Support/Code/User/settings.json
rm ~/Library/Application\ Support/Code/User/keybindings.json

# neovim configs
rm -rf ~/.config/nvim

# script ends
echo "dotfiles uninstallation script completed"
