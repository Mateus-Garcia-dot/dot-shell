PLUGINS_DIR=$HOME/.config/shell/plugins

# Hist configs
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=100000
bindkey -e

#Some path things
PATH=/opt/homebrew/bin:$PATH
PATH=/usr/local/bin:$PATH
PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
PATH="/Users/mateus.garcia/.asdf/shims:$PATH"
PATH="/Users/mateus.garcia/.local/bin:$PATH"

# Some auto complete configs
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit
# highlight conplete on tab 
zstyle ':completion:*' menu select

# raw dogging the pugins just to get some more performance
source $PLUGINS_DIR/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $PLUGINS_DIR/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $PLUGINS_DIR/zsh-manydots-magic/manydots-magic

#Nvm Things
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# my custom config
. $HOME/.config/shell/startup.sh

load_custom_shell

export GPG_TTY=$(tty)

eval "$(starship init zsh)"
