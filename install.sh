#!/bin/sh

# script starts
echo "dotfiles installation script starts"

# zshell configs
ln -s ~/Developer/dotfiles/zsh/.zshrc ~/.zshrc

# git global ignore configs
ln -s ~/Developer/dotfiles/git/.gitignore_global ~/.gitignore_global
echo "Run 'git config --global core.excludesfile ~/.gitignore_global' to enable .gitignore_global"

# ideavim configs
ln -s ~/Developer/dotfiles/idea/.ideavimrc ~/.ideavimrc

# neovim configs
mkdir -p ~/.config
ln -s ~/Developer/dotfiles/nvim ~/.config/nvim

# script ends
echo "dotfiles installtion script completed"
