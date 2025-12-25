PLUGINS_DIR=$HOME/.config/shell/plugins

# Hist configs
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=100000
bindkey -e

# vim thingy
export ZVM_SYSTEM_CLIPBOARD_ENABLED=true

#Some path things
PATH=/opt/homebrew/bin:$PATH
PATH=/usr/local/bin:$PATH
PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
PATH="/Users/mateus.garcia/.asdf/shims:$PATH"
PATH="/Users/mateus.garcia/.local/bin:$PATH"

# this gives me some cool operations that i can do
setopt EXTENDED_GLOB

# Some auto complete configs
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit
# highlight conplete on tab 
zstyle ':completion:*' menu select

# raw dogging the pugins just to get some more performance
source $PLUGINS_DIR/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
if [[ -z "$INSIDE_EMACS" ]]; then
    source $PLUGINS_DIR/zsh-vi-mode/zsh-vi-mode.plugin.zsh
fi
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

# fuzzy find
source <(fzf --zsh)
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/mateus.garcia/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
