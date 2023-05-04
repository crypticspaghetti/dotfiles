#!/usr/bin/env bash

# nvim
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim"

rm -rf "$HOME/.config/X11"
ln -sf "$HOME/dotfiles/X11" "$HOME/.config"

