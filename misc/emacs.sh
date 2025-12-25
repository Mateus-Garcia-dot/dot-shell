#!/bin/bash

[[ "$INSIDE_EMACS" != 'vterm' ]] && return

vterm_cmd() {
    printf "\e]51;E%s\e\\" "$1"
}

open() {
    vterm_cmd "find-file \"$(realpath "$1")\""
}
