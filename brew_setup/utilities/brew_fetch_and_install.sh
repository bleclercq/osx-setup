#!/bin/bash

source ./utilities/brew_installs_list.sh
source ./utilities/brew_fetchs.sh

function formulaes_fetch_and_install {
    raw_list_of_formulaes=$(find ./formulaes/ -type f ! -name 'nice_to_have.txt' | xargs cat)
    list_of_formulaes=($raw_list_of_formulaes)
    echo -e "${GREEN}Fetching formulaes${COLOR_RESET}"
    brew_fetch_list "${list_of_formulaes[@]}"
    echo -e "${GREEN}Installing formulaes${COLOR_RESET}"
    brew_install_list "${list_of_formulaes[@]}"
    return ${list_of_formulaes[@]}
}

function casks_fetch_and_install {
    raw_list_of_cask=$(find ./casks/ -type f ! -name 'nice_to_have.txt' | xargs cat)
    list_of_casks=($raw_list_of_cask)
    echo -e "${GREEN}Fetching casks${COLOR_RESET}"
    brew_cask_fetch_list "${list_of_casks[@]}"
    echo -e "${GREEN}Installing casks${COLOR_RESET}"
    brew_cask_install_list "${list_of_casks[@]}"
    return ${list_of_casks[@]}
}
