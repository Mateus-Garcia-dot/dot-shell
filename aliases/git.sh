#!/bin/env bash

alias g='git'
alias gc='git commit -v'
alias gcl='git clone'
alias ga='git add'
alias gsw='git switch'
alias gp='git push'
alias gcn!='git commit --verbose --no-edit --amend'
alias gd='git diff'
alias gds='git diff --staged'
alias glg='git log --stat'
alias gl='git pull'
alias gpf!='git push --force'
alias grb='git rebase'
alias grbo='git rebase origin'
alias grm='git rm'
alias gst='git status'
alias gb='git branch --sort=committerdate'
alias grt='cd "$(git rev-parse --show-toplevel || echo .)"'
alias gres='git restore'
alias gress='git restore --source'
alias gsh='git stash'
alias gshp='git stash push --patch'

# alias gco='git checkout'
function gco() {
	echo
	echo 'Nope, If you are trying to change or create branches use gsw'
	echo 'If you are trying to restore a file then gres or gress'
	echo
}
