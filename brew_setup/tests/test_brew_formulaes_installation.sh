#!/bin/bash

<<<<<<< HEAD
source ./brew_setup/utilities/brew_fetch_and_install.sh

formulaes=$(formulaes_fetch_and_install)
formulaes_list=($formulaes)
installed_formulaes=$(brew list | sort -n | tr "\n" " ")

for item in "${formulaes_list[@]}"; do
=======
cd ..
source ./utilities/brew_fetch_and_install.sh

formulaes=$(formulaes_fetch_and_install)
formulaes_array=($formulaes)
installed_formulaes=$(brew list | sort -n | tr "\n" " ")

for item in "${formulaes_array[@]}"; do
>>>>>>> bab75395df4868064db6296e94c87dbc661ffffb
    if [[ " ${installed_formulaes[@]]} " =~ " ${item} " ]]; then
        :
    else
        echo fail
        exit 1
    fi
done
echo success