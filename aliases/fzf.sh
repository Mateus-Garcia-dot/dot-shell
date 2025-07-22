#!/bin/bash

# fzcd() {
#     local dir
#     dir=$(fd -t d | fzf) && cd "$dir"
# }

alias -g ffd='$(fd -t d | fzf --prompt="Dir: " --height=10 --reverse)'
alias -g fff='$(fd -t f | fzf --prompt="File: " --height=10 --reverse)'
alias -g ff='$(fd | fzf --prompt="Any: " --height=10 --reverse)'
