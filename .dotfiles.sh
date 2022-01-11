#!/bin/bash

# Create "config" alias
echo 'alias config="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc

# Add gitignore
echo "dotfiles" >> .gitignore

# Clone dotfiles repositoty
git clone --bare https://www.github.com/andremralves/dotfiles $HOME/dotfiles

# Add the files into my home
config checkout

# Untracked files off
config config --local status.showUntrackedFiles no
