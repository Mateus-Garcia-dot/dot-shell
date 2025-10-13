#!/bin/env bash

autoload bashcompinit && bashcompinit

alias dcr="docker-compose down && docker-compose up -d && docker-compose logs -f"

alias dssh="_dssh"

function _dssh() {
	docker exec -it $1 sh
}

_docker_container_ids() {
	local -a containers
	containers=($(docker ps --format "{{.ID}}:{{.Names}}"))

	local -a options
	for container in "${containers[@]}"; do
		options+=("${container}")
	done

	_describe 'container' options
}

compdef _docker_container_ids _dssh
