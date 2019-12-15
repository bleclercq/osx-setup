#!/bin/bash

cd ..
sudo su
source ./utilities/sudo_needed.sh

raw_list_of_sudo_needed_casks=$(cat ./casks/sudo_needed.txt | tr "\n" " ")
list_of_sudo_needed_casks=($raw_list_of_sudo_needed_casks)
sudo_needed "${list_of_sudo_needed_casks[@]}"

for item in "${cask_array[@]}"; do
    if [[ " ${installed_cask[@]]} " =~ " ${item} " ]]; then
        :
    else
        echo fail
        echo $item
        exit 1
    fi
done
echo success
