#!/bin/bash

# TODO CHECK THAT VS CODE IS ALREADY INSTALLED...

# TODO Fix this as apple doesn't seems to allowed the install by default, is some condition needs to be met to have this directly working?

function install_vscode_extensions() {
    local current_shell="$SHELL"

    if [[ $current_shell == "/bin/zsh" ]]; then
        source ./vscode_setup/zsh_set_alias_and_install.sh
        install_extensions_with_zsh
    else
        source ./vscode_setup/bash_set_alias_and_install.sh
        install_extensions_with_bash
    fi
    echo "You can now use: code as a visual studio code alias in your terminal."
    echo "The following have been installed:"
    code --list-extensions
}