#!/bin/bash

function brew_fetch_list() {
    local type_of_install="$1"
    shift
    local list_of_downloads=("$@")
    local fetch=""
    if [[ $type_of_install == "formulaes" ]]; then
        for item in "${list_of_downloads[@]}"; do
            fetch+="brew fetch "$item" & "
        done
    else
        for item in "${list_of_downloads[@]}"; do
            fetch+="brew cask fetch "$item" & "
        done
    fi
    local final_fetch="${fetch%??}"
    eval $final_fetch
}