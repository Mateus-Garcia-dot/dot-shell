#!/bin/echo You should run as .

function _load_aliases() {
	for file in $HOME/.config/shell/aliases/*.sh; do
		source "$file"
	done
}

function load_custom_shell() {
	_load_aliases
}
