#!/bin/bash

source ./brew_setup/utilities/brew_install_list.sh
source ./brew_setup/utilities/brew_fetch.sh

function nice_to_have() {
    local raw_list_of_nice_to_have=$(cat ./brew_setup/casks/nice_to_have.txt | tr "\n" " ")
    local list_of_nice_to_have=($raw_list_of_nice_to_have)
    echo "Here is a list of nice to have:"
    printf "%s\n" "${list_of_nice_to_have[@]}"
    echo "They require sudo priviledge (application's installer)."
    echo "Reminder: Your sudo password is your current mac user password (if you haven't change you sudo)"
    read -p "Do you also want to add the following: (y/n) " raw_answer
    local lower_case_answer=$(tr "[:upper:]" "[:lower:]"<<<${raw_answer})
    if [[ $lower_case_answer == "y" ]]; then
        brew_fetch_list "casks" "${list_of_nice_to_have[@]}" > /dev/null 2>&1
        brew_install_list "casks" "${list_of_nice_to_have[@]}" > /dev/null 2>&1
    else
        :
    fi
}