#!/bin/bash

<<<<<<< HEAD
source ./brew_setup/utilities/brew_install_list.sh
source ./brew_setup/utilities/brew_fetch.sh

function formulaes_fetch_and_install {
    local raw_list_of_formulaes=$(find ./brew_setup/formulaes/ -type f ! -name "nice_to_have.txt" | xargs cat)
    local list_of_formulaes=($raw_list_of_formulaes)
    brew_fetch_list "formulaes" "${list_of_formulaes[@]}" > /dev/null 2>&1
    brew_install_list "formulaes" "${list_of_formulaes[@]}" > /dev/null 2>&1
    printf "%s " "${list_of_formulaes[@]}" | tr "\n" " " | sort -n
=======
source ./utilities/brew_install_list.sh
source ./utilities/brew_fetch.sh

function formulaes_fetch_and_install {
    local raw_list_of_formulaes=$(find ./formulaes/ -type f ! -name "nice_to_have.txt" | xargs cat)
    local list_of_formulaes=($raw_list_of_formulaes)
    brew_fetch_list "formulaes" "${list_of_formulaes[@]}" > /dev/null 2>&1
    brew_install_list "formulaes" "${list_of_formulaes[@]}" > /dev/null 2>&1
    printf "%s " "${list_of_formulaes[@]}" | tr "\n" " " | sort
>>>>>>> bab75395df4868064db6296e94c87dbc661ffffb
}

function casks_fetch_and_install {
    # -name 'hashistack.txt' Have to be removen once this is closed: https://github.com/hashicorp/vagrant/issues/11249
<<<<<<< HEAD
    local raw_list_of_cask=$(find ./brew_setup/casks/ -type f ! -name 'nice_to_have.txt' ! -name 'hashistack.txt' | xargs cat)
    local list_of_casks=($raw_list_of_cask)
    brew_fetch_list "casks" "${list_of_casks[@]}" > /dev/null 2>&1
    brew_install_list "casks" "${list_of_casks[@]}" > /dev/null 2>&1
    printf "%s " "${list_of_casks[@]}" | tr "\n" " " | sort -n
=======
    local raw_list_of_cask=$(find ./casks/ -type f ! -name 'nice_to_have.txt' ! -name 'hashistack.txt' | xargs cat)
    local list_of_casks=($raw_list_of_cask)
    brew_fetch_list "casks" "${list_of_casks[@]}" > /dev/null 2>&1
    brew_install_list "casks" "${list_of_casks[@]}" > /dev/null 2>&1
    printf "%s " "${list_of_casks[@]}" | tr "\n" " " | sort
>>>>>>> bab75395df4868064db6296e94c87dbc661ffffb
}

