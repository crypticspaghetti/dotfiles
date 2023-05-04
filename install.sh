#!/usr/bin/env bash

# nvim
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim"

# i3
rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config"

rm -rf "$HOME/.config/X11"
ln -sf "$HOME/dotfiles/X11" "$HOME/.config"

