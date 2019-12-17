#!/bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"
<<<<<<< HEAD
ORANGE="\033[0;33m"
=======
RED="\033[0;31m"
>>>>>>> bab75395df4868064db6296e94c87dbc661ffffb
COLOR_RESET="\033[0m"

# TODO Add a global progress bar

<<<<<<< HEAD
function install_brew_extensions() {
    echo -e "${GREEN}Installing XCode${COLOR_RESET}"
    xcode-select --install

    source ./brew_setup/utilities/update_os_x_apps.sh
    source ./brew_setup/utilities/nice_to_have.sh
    source ./brew_setup/utilities/brew_fetch_and_install.sh

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    brew upgrade

    update_os_x_apps
    echo -e "${GREEN}Installing formulaes${COLOR_RESET}"
    formulaes_fetch_and_install
    echo -e "${GREEN}Installing casks${COLOR_RESET}"
    casks_fetch_and_install

    nice_to_have

    # This install the latest virtualbox compatible with vagrant at this moment (6.0) 
    brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask/7e703e0466a463fe26ab4e253e28baa9c20d5f36/Casks/virtualbox.rb

    # TODO ASK if they want the cleanup as it destroy a folder 

    echo -e "${GREEN}Cleaning up${COLOR_RESET}"
    brew cleanup
    rm -rf "$(brew --cache)"

    echo -e "${GREEN}Done${COLOR_RESET}"

    echo -e "The following formulaes had been installed through brew install:"
    brew list
    echo -e "\nIf you think you don't need some of them, run:\n"
    echo -e "brew uninstall <FORMULAE>\n"
    echo -e "\nThe following casks had been installed through brew cask install:"
    brew cask list
    echo -e "\nIf you think you don't need some of them, run:"
    echo -e "brew cask uninstall <CASK>"
    echo -e "\nIf anything is missing, please search here:"
    echo -e "https://formulae.brew.sh/"
    echo -e "Here is another resourceful link, check it out:"
    echo -e "https://github.com/jaywcjlove/awesome-mac"
    echo -e "If you want to improve the list, the project or if you have a bug, please open a Pull Request, other people might have the same need as yours."
}
=======
echo -e "${GREEN}Installing XCode${COLOR_RESET}"
xcode-select --install

source ./utilities/update_os_x_apps.sh
source ./utilities/nice_to_have.sh
source ./utilities/brew_fetch_and_install.sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

update_os_x_apps
echo -e "${GREEN}Installing formulaes${COLOR_RESET}"
formulaes_fetch_and_install
echo -e "${GREEN}Installing casks${COLOR_RESET}"
casks_fetch_and_install

nice_to_have

# This install the latest virtualbox compatible with vagrant at this moment (6.0) 
brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask/7e703e0466a463fe26ab4e253e28baa9c20d5f36/Casks/virtualbox.rb

echo -e "${GREEN}Cleaning up${COLOR_RESET}"
brew cleanup
rm -rf "$(brew --cache)"

echo -e "${GREEN}Done${COLOR_RESET}"

echo -e "The following formulaes had been installed through brew install:"
brew list
echo -e "\nIf you think you don't need some of them, run:\n"
echo -e "brew uninstall <FORMULAE>\n"
echo -e "\nThe following casks had been installed through brew cask install:"
brew cask list
echo -e "\nIf you think you don't need some of them, run:"
echo -e "brew cask uninstall <CASK>"
echo -e "\nIf anything is missing, please search here:"
echo -e "https://formulae.brew.sh/"
echo -e "Here is another resourceful link, check it out:"
echo -e "https://github.com/jaywcjlove/awesome-mac"
echo -e "If you want to improve the list, the project or if you have a bug, please open a Pull Request, other people might have the same need as yours."
>>>>>>> bab75395df4868064db6296e94c87dbc661ffffb
