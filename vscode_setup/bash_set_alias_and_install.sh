#!/bin/bash

function install_extensions_with_bash {
    # # https://github.com/Microsoft/vscode-docs/blob/master/docs/setup/mac.md#launching-from-the-command-line
    cat << EOF >> ~/.bashrc
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

    source ~/.bashrc
    array_of_extensions=("${(@f)$(cat ./vscode_setup/extensions.txt)}")
    for item in "${array_of_extensions[@]}"; do
        code --install-extension "$item"
    done
}