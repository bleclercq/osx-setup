#!/bin/bash

function brew_fetch_list() {
    list_of_downloads=("$1")
    type_of_install="$2"
    echo $list_of_downloads
    echo $type_of_install
    fetch=""
    if [[ $type_of_install == "formulaes" ]] ; then
        for item in "${list_of_downloads[@]}"; do
            fetch+="brew fetch "$item" & "
        done
    else
        for item in "${list_of_cask[@]}"; do
            fetch+="brew cask fetch "$item" & "
        done
    fi
    final_fetch="${fetch%??}"
    eval $final_fetch
}