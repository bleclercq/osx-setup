#!/bin/bash

cd ..
source ./utilities/brew_fetch_and_install.sh

cask=$(casks_fetch_and_install)
cask_array=($cask)
installed_cask=$(brew list | sort -n | tr "\n" " ")

for item in "${cask_array[@]}"; do
    if [[ " ${installed_cask[@]]} " =~ " ${item} " ]]; then
        :
    else
        echo fail
        echo $item
        exit 1
    fi
echo success
done
