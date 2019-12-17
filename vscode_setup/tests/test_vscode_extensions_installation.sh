#!/bin/bash

brew cask install visual-studio-code

source ./vscode_setup/vscode_extensions_installation.sh

install_vscode_extensions

installed_extensions=$(code --list-extensions)

expected_installed_extensions=$(find ./vscode_setup/extensions/ -type f -name "extensions.txt" | xargs cat)

for item in "${expected_installed_extensions[@]}"; do
    if [[ " ${installed_extensions[@]]} " =~ " ${item} " ]]; then
        :
    else
        echo fail
        exit 1
    fi
done
echo success