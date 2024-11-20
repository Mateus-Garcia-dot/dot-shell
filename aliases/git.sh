alias grt='cd "$(git rev-parse --show-toplevel || echo .)"'
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
alias grm='git rm'
alias gst='git status'

# alias gco='git checkout'
function gco() {
	echo
	echo 'Nope, If you are trying to change or create branches use gsw'
	echo 'If you are trying to checkout a file then write the full command'
	echo
}
