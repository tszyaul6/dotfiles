#!/bin/sh

# script starts
echo "dotfiles uninstallation script starts"

# zshell configs
rm ~/.zshrc

# git global ignore configs
rm ~/.gitignore_global

# ideavim configs
rm ~/.ideavimrc

# neovim configs
rm -rf ~/.config/nvim

# script ends
echo "dotfiles uninstallation script completed"
