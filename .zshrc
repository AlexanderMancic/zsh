# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# for fzf
autoload -Uz compinit
compinit

source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-you-should-use/zsh-you-should-use.plugin.zsh
source ~/.config/zsh/plugins/fzf-tab/fzf-tab.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

zstyle ':fzf-tab:*' fzf-bindings \
  'ctrl-n:down' \
  'ctrl-p:up' \
  'enter:accept' \
  'ctrl-y:accept'

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

set -o vi

export EDITOR=nvim
export MANPAGER="$EDITOR +Man!"
PATH=$PATH:~/zig-linux-x86_64-0.15.0-dev.337+4e700fdf8
PATH=$PATH:~/go/bin/
PATH=$PATH:/home/alex/.nvm/versions/node/v22.14.0/bin
PATH=$PATH:/home/alex/scripts
PATH=$PATH:/home/alex/.local/bin
PATH=/home/alex/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-24-openjdk
export PATH=$JAVA_HOME/bin:$PATH

HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000
setopt INC_APPEND_HISTORY
setopt HIST_FCNTL_LOCK

eval "$(zoxide init zsh)"
alias cd=z
z

export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
P10K_FILE="$ZDOTDIR/.p10k.zsh"
[[ ! -f "$P10K_FILE" ]] || source "$P10K_FILE"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey '^Y' autosuggest-accept
