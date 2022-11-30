#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")";
config=$HOME/.config

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";

if [[ $REPLY =~ ^[Yy]$ ]]; then
    # Remove files
    rm -rf $config/nvim
    rm -rf $config/alacritty
    rm -rf $HOME/.tmux.conf

    # Create symbolic links
    ln --symbolic -v $(pwd)/nvim $config/nvim
    ln --symbolic -v $(pwd)/alacritty $config/alacritty
    ln --symbolic -v $(pwd)/tmux.conf $HOME/.tmux.conf
fi;

