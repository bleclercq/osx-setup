#!/bin/bash

function brew_install_list() {
    list_of_installation="$1"
    type_of_install="$2"
    if [[ $type_of_install == "formulaes" ]] ; then
        for item in "${list_of_installation[@]}"; do
            brew install "$item"
        done
    else
        for item in "${list_of_cask[@]}"; do
            brew cask install --appdir="/Applications" "$item"
        done
    fi
}