#!/bin/bash

# TODO CHECK THAT VS CODE IS ALREADY INSTALLED...

function install_vscode_extensions() {
    local current_shell="$SHELL"

    if [[ $current_shell == "/bin/zsh" ]]; then
        source ./vscode_setup/zsh_set_alias_and_install.sh
        install_extensions_with_zsh
    else
        source ./vscode_setup/bash_set_alias_and_install.sh
        install_extensions_with_bash
    fi
    echo "You can now use: `code` as a visual studio code alias in your terminal."
}