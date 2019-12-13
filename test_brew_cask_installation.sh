#!/bin/bash

cd brew_setup
source ./utilities/brew_fetch_and_install.sh

formulaes=$(formulaes_fetch_and_install)
installed_formulaes=$(brew list | sort -n | tr "\n" " ")
casks=$(casks_fetch_and_install)
installed_casks=$(brew cask list | sort -n | tr "\n" " ")

if [ formulaes == installed_formulaes ]; then
    :
else
    echo failure#1
    echo $formulaes
    echo $installed_formulaes
    exit 1
fi

if [ casks == installed_casks ]; then
    :
else
    echo failure#2
    echo $casks
    echo $installed_casks
    exit 1
fi