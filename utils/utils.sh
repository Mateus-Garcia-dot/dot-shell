#!/bin/echo You should run as .

# This just works on ZSH keep that in mind
# A cool adition would be change this scripts to run maybe in lua or some fast scripting language
confirm() {
	read "response?${1:-Are you sure? [y/N]} "
	case "$response" in
		[yY][eE][sS]|[yY]) 
			true
			;;
		*)
			false
			;;
	esac
}

