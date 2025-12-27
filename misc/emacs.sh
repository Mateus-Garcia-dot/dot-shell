#!/bin/bash

[[ "$INSIDE_EMACS" != 'vterm' ]] && return

if [[ -n "$EMACS_VTERM_PATH" ]] && [[ -f "$EMACS_VTERM_PATH/etc/emacs-vterm-zsh.sh" ]]; then
    source "$EMACS_VTERM_PATH/etc/emacs-vterm-zsh.sh"
fi


vterm_cmd() {
    printf "\e]51;E%s\e\\" "$1"
}

open() {
    vterm_cmd "find-file \"$(realpath "$1")\""
}

