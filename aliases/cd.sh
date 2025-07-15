#!/bin/bash

tcd() {
    local current=$(pwd)
    local git_root=$(git rev-parse --show-toplevel 2>/dev/null)
    local create_dir=false
    
    [[ "$1" == "-c" ]] && create_dir=true
    
    if [[ -z "$git_root" ]]; then
        echo "Not in a git repository"
        return 1
    fi
    
    # Determine target path
    if [[ "$current" == *"/test/"* ]]; then
        local new_path=${current/\/test\//\/}
    else
        local relative_path=${current#$git_root/}
        local new_path="$git_root/test/$relative_path"
    fi
    
    # Handle directory creation
    if [[ ! -d "$new_path" ]]; then
        echo "Warning: Directory '$new_path' does not exist"
        if [[ "$create_dir" == true ]]; then
            mkdir -p "$new_path"
            echo "Created directory: $new_path"
        else
            echo "Use 'cdgo -c' to create the directory"
            return 1
        fi
    fi
    
    cd "$new_path"
}
