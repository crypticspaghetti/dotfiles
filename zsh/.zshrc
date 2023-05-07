#!/usr/bin/env zsh

fpath=($ZDOTDIR/external $fpath)

source "$XDG_CONFIG_HOME/zsh/aliases"

autoload -Uz compinit; compinit
_comp_options+=(globdots) # autocomplete hidden files
source ~/dotfiles/zsh/external/completion.zsh

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

autoload -Uz prompt_purification_setup; prompt_purification_setup

# Push the directory to the stack when using cd
setopt AUTO_PUSHD
# Prevent duplicate directories being added to the stack
setopt PUSHD_IGNORE_DUPS
# Prevent printing directory stack after pushd popd
setopt PUSHD_SILENT

autoload -Uz bd; bd

if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# Vi mode
bindkey -v
export KEYTIMEOUT=1

autoload -Uz cursor_mode; cursor_mode 

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Clear lines
bindkey -r '^l'
bindkey -r '^g'
bindkey -s '^g' 'clear\n'

source $DOTFILES/zsh/scripts.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

