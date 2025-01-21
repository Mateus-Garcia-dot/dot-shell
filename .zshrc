PLUGINS_DIR=$HOME/.config/shell/plugins

# This plugin is kinda different so it needs to be at the top
source $PLUGINS_DIR/zsh-defer/zsh-defer.plugin.zsh

# P10K initialization
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Hist configs
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=100000
bindkey -e

# asdf init 
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)

# Some auto complete configs
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit
# highlight conplete on tab 
zstyle ':completion:*' menu select

# raw dogging the pugins just to get some more performance
source $PLUGINS_DIR/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $PLUGINS_DIR/powerlevel10k/powerlevel10k.zsh-theme
source $PLUGINS_DIR/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Nvm Things
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# my custom config
. $HOME/.config/shell/startup.sh

load_custom_shell
