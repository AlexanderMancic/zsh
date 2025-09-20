#!/usr/bin/env bash

PLUGINS_DIR="$HOME/.config/zsh/plugins/"

mkdir -p "$PLUGINS_DIR"
cd "$PLUGINS_DIR"

git clone https://github.com/romkatv/powerlevel10k.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git
git clone https://github.com/Aloxaf/fzf-tab.git
git clone https://github.com/zsh-users/zsh-history-substring-search.git
git clone https://github.com/jeffreytse/zsh-vi-mode.git
