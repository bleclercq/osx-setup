#!/bin/bash

# TODO: refactor this

function brew_fetch_list() {
    list_of_brews=("$@")
    fetch=""
    for item in "${list_of_brews[@]}"; do
        fetch+="brew fetch "$item" & "
    done
    final_fetch="${fetch::${#fetch}-2}"
    eval $final_fetch
}

function brew_cask_fetch_list() {
    list_of_cask=("$@")
    fetch=""
    for item in "${list_of_cask[@]}"; do
        fetch+="brew cask fetch "$item" & "
    done
    final_fetch="${fetch::${#fetch}-2}"
    eval $final_fetch
}