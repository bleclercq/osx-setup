#!/bin/bash

function brew_install_list() {
    list_of_brews=("$@")
    for item in "${list_of_brews[@]}"; do
        brew install "$item"
    done
}

function brew_cask_install_list() {
    list_of_cask=("$@")
    for item in "${list_of_cask[@]}"; do
        brew cask install --appdir="/Applications" "$item"
    done
}