#!/bin/bash

source ./utilities/brew_installs_list.sh
source ./utilities/brew_fetchs.sh

function nice_to_have() {
    list_of_nice_to_have=("$@")
    echo "Here is a list of nice to have:"
    printf "%s\n" "${list_of_nice_to_have[@]}"
    read -p "Do you also want to add the following: (y/n) " raw_answer
    lower_case_answer=$(tr "[:upper:]" "[:lower:]"<<<${raw_answer})
    if [[ $lower_case_answer == "y" ]]; then
        brew_cask_fetch_list $"${list_of_nice_to_have[@]}"
        brew_cask_install_list $"${list_of_nice_to_have[@]}"
    else
        :
    fi
}