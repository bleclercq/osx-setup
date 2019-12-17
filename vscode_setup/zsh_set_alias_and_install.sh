#!/bin/bash

function install_extensions_with_zsh {
    # https://github.com/Microsoft/vscode-docs/blob/master/docs/setup/mac.md#launching-from-the-command-line
    cat << EOF >> ~/.zshrc
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

    source ~/.zshrc > /dev/null 2>&1
    local raw_list_of_extensions=$(find ./vscode_setup/extensions/ -type f -name "extensions.txt" | xargs cat)
    local list_of_extensions=($raw_list_of_extensions)
    
    for item in "${list_of_extensions[@]}"; do
        code --install-extension "$item"
    done
}