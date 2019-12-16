#!/bin/zsh

## TODO CHECK THAT VS CODE IS ALREADY INSTALLED...

## TODO Add either in zsh or bash, ask the user what he wants. Make zsh default choice for him



cat << EOF >> ~/.zshrc
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

source ~/.zshrc

array_of_extensions=("${(@f)$(cat extensions.txt)}")
for item in "${array_of_extensions[@]}"; do
    code --install-extension "$item"
done

echo "You can now use: `code` as a visual studio code alias in your terminal."