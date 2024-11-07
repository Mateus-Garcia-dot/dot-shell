#!/bin/echo You should run as .

function _load_misc() {
	for file in $HOME/.config/shell/misc/*.sh; do
		if [[ "$file" == *_async.sh ]]; then
			# This runs asynchronously 
			# keep in mind that this is a subshell, so it cant change anything on the current enviroment
			(bash "$file" &)
		else
			source "$file" # Run normally
		fi
	done
}

function _load_envs() {
	for file in $HOME/.config/shell/envs/*.sh; do
		source "$file"
	done
}

function _load_aliases() {
	for file in $HOME/.config/shell/aliases/*.sh; do
		source "$file"
	done
}

function load_custom_shell() {
	_load_misc
	_load_aliases
	_load_envs
}
