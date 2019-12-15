#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"
COLOR_RESET="\033[0m"

# TODO Add a global progress bar

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

raw_list_of_nice_to_have_casks=$(cat ./casks/nice_to_have.txt | tr "\n" " ")
list_of_nice_to_have_casks=($raw_list_of_nice_to_have_casks)
nice_to_have "${list_of_nice_to_have_casks[@]}"

raw_list_of_sudo_needed_casks=$(cat ./casks/nice_to_have.txt | tr "\n" " ")
list_of_sudo_needed_casks=($raw_list_of_sudo_needed_casks)
sudo_needed "${list_of_sudo_needed_casks[@]}"

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
echo -e "If you can, open a Pull Request, other people might have the same need as yours."