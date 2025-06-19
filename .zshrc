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

# changing the color of the prompt
zstyle :prompt:pure:path color cyan
zstyle :prompt:pure:git:branch color green  
zstyle :prompt:pure:prompt:success color magenta
zstyle :prompt:pure:git:dirty color yellow

# remove the new line on prompt
print() {
  [ 0 -eq $# -a "prompt_pure_precmd" = "${funcstack[-1]}" ] || builtin print "$@";
}
#prompt
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; 
promptinit
prompt pure
PROMPT="${PROMPT%% } "

# fix on the vi mode eating a line above
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/}/(main|viins)/}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
