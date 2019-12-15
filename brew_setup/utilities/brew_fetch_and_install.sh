#!/bin/bash

source ./utilities/brew_installs_list.sh
source ./utilities/brew_fetchs.sh

# TODO ADD A WAY TO BREW UPGRADE OUTDATED PACKAGES

function formulaes_fetch_and_install {
    raw_list_of_formulaes=$(find ./formulaes/ -type f ! -name "nice_to_have.txt" | xargs cat)
    list_of_formulaes=($raw_list_of_formulaes)
    brew_fetch_list "${list_of_formulaes[@]}" "formulaes" > /dev/null 2>&1
    brew_install_list "${list_of_formulaes[@]}" "formulaes" > /dev/null 2>&1
    printf "%s " "${list_of_formulaes[@]}" | tr "\n" " " | sort
}

function casks_fetch_and_install {
    raw_list_of_cask=$(find ./casks/ -type f ! -name 'nice_to_have.txt' ! -name 'sudo_needed.txt' | xargs cat)
    list_of_casks=($raw_list_of_cask)
    brew_fetch_list "${list_of_casks[@]}" "cask" > /dev/null 2>&1
    brew_install_list "${list_of_casks[@]}" "cask" > /dev/null 2>&1
    printf "%s " "${list_of_casks[@]}" | tr "\n" " " | sort
}