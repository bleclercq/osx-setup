#!/bin/bash

function install_extensions_with_bash {
    # https://github.com/Microsoft/vscode-docs/blob/master/docs/setup/mac.md#launching-from-the-command-line
    cat << EOF >> ~/.bashrc
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

    source ~/.bashrc > /dev/null 2>&1
    local raw_list_of_extensions=$(find ./vscode_setup/ -type f  -name "extensions.txt" | xargs cat)
    local list_of_extensions=($raw_list_of_extensions)
    for item in "${list_of_extensions[@]}"; do
        code --install-extension "$item"
    done
}