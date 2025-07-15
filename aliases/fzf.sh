#!/bin/bash

fzcd() {
    local dir
    dir=$(fd -t d | fzf) && cd "$dir"
}

