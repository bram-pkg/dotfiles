#!/bin/zsh

export ZSH_COMPDUMP="$HOME/.cache/zcompdump-${HOST}-${ZSH_VERSION}"
export EDITOR="micro"

PATH="/usr/local/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
export PATH

source <(antibody init)

antibody bundle ohmyzsh/ohmyzsh
antibody bundle ohmyzsh/ohmyzsh path:themes/robbyrussell.zsh-theme
antibody bundle ohmyzsh/ohmyzsh path:plugins/systemd

antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-history-substring-search

alias zshr="source $HOME/.zshrc"
alias gits="git status"
