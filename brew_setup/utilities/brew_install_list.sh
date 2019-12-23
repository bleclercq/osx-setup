#!/bin/bash

source ./progress_bar/progress_bar.sh

function brew_install_list() {
    local type_of_install="$1"
    shift
    local list_of_installation=("$@")
    local i=0
    if [[ $type_of_install == "formulaes" ]]; then
        for formulaes in "${list_of_installation[@]}"; do
            progress_bar "$i" "$formulaes" is installing...
            brew install "$formulaes" > /dev/null 2>&1
            i=$((i+100/${#list_of_installation[@]}))
        done
    else
        echo "Casks require sudo priviledge (because of the application's installer)."
        echo "Reminder: Your sudo password is your current mac user password (if you haven't change you sudo)"
        for cask in "${list_of_installation[@]}"; do
            progress_bar "$i" "$cask" is installing...
            brew cask install --appdir="/Applications" "$cask" > /dev/null 2>&1
            i=$((i+100/${#list_of_installation[@]}))
        done
    fi
    echo 
}