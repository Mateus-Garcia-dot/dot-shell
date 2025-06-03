#!/bin/env bash

alias g='git'
alias ga='git add'
alias gb='git branch --sort=committerdate'
alias gc='git commit -v'
alias gcae='git commit --verbose --amend'
alias gcl='git clone'
alias gcn!='git commit --verbose --no-edit --amend'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gl='git pull'
alias glg='git log --stat'
alias gp='git push'
alias gpf!='git push --force'
alias grb='git rebase'
alias grbo='git rebase origin'
alias gres='git restore'
alias gress='git restore --source'
alias grm='git rm'
alias grt='cd "$(git rev-parse --show-toplevel || echo .)"'
alias gsh='git stash'
alias gshp='git stash push --patch'
alias gst='git status'
alias gsw='git switch'
alias gwip='git add -A && git commit -m "WIP"'


# alias gco='git checkout'
function gco() {
	echo
	echo 'Nope, If you are trying to change or create branches use gsw'
	echo 'If you are trying to restore a file then gres or gress'
	echo
}
