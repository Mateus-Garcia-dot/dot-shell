autoload bashcompinit && bashcompinit

alias dcr="docker-compose down;docker-compose up"

alias dssh="_dssh"

function _dssh() {
	docker exec -it $1 sh
}

_docker_container_ids() {
	local -a containers
	containers=($(docker ps --format "{{.ID}}:{{.Names}}"))

	local -a options
	for container in "${containers[@]}"; do
		local id="${container%%:*}"
		local name="${container#*:}"
		options+=("${id}:${name}")
	done

	_describe 'container' options
}

compdef _docker_container_ids _dssh
