#!/bin/bash

function brew_install_list() {
    local type_of_install="$1"
    shift
    local list_of_installation=("$@")
    if [[ $type_of_install == "formulaes" ]]; then
        for item in "${list_of_installation[@]}"; do
            brew install "$item"
        done
    else
        echo "They require sudo priviledge (application's installer)."
        echo "Reminder: Your sudo password is your current mac user password (if you haven't change you sudo)"
        for item in "${list_of_installation[@]}"; do
            brew cask install --appdir="/Applications" "$item"
        done
    fi
}