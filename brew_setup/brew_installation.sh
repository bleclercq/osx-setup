#!/bin/bash

# HANDLE SUDO FFS

GREEN="\033[0;32m"
ORANGE="\033[0;33m"
RED="\033[0;31m"
COLOR_RESET="\033[0m"

echo -e "${GREEN}Installing XCode${COLOR_RESET}"
xcode-select --install

source ./utilities/update_os_x_apps.sh
source ./utilities/brew_installs_list.sh
source ./utilities/brew_fetchs.sh
source ./utilities/nice_to_have.sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

update_os_x_apps

raw_list_of_common_formulaes=$(cat ./formulaes/commons.txt | tr "\n" " ")
raw_list_of_common_cli=$(cat ./formulaes/cli.txt | tr "\n" " ")
raw_list_of_hashistack=$(cat ./formulaes/hashistack.txt | tr "\n" " ")
list_of_common_formulaes=($raw_list_of_common_formulaes)
list_of_cli=($raw_list_of_common_cli)
list_of_hashistack=($raw_list_of_hashistack)
echo -e "${GREEN}Fetching formulaes${COLOR_RESET}"
brew_fetch_list "${list_of_common_formulaes[@]}" "${list_of_cli[@]}" "${list_of_hashistack[@]}"
echo -e "${GREEN}Installing formulaes${COLOR_RESET}"
brew_install_list "${list_of_common_formulaes[@]}" "${list_of_cli[@]}" "${list_of_hashistack[@]}"

raw_list_of_common_casks=$(cat ./casks/commons.txt | tr "\n" " ")
raw_list_of_cask_cli=$(cat ./casks/cli.txt | tr "\n" " ")
raw_list_of_hashicorp_casks=$(cat ./casks/hashistack.txt | tr "\n" " ")
echo -e "${GREEN}Fetching casks${COLOR_RESET}"
list_of_common_casks=($raw_list_of_common_casks)
list_of_hashicorp_casks=($raw_list_of_hashicorp_casks)
list_of_cli_casks=($raw_list_of_cask_cli)
echo -e "${GREEN}Installing casks${COLOR_RESET}"
brew_cask_fetch_list "${list_of_common_casks[@]}" "${list_of_cli_casks[@]}"  "${list_of_hashicorp_casks[@]}"
brew_cask_install_list "${list_of_common_casks[@]}" "${list_of_cli_casks[@]}"  "${list_of_hashicorp_casks[@]}"

raw_list_of_nice_to_have_casks=$(cat ./casks/nice_to_have.txt | tr "\n" " ")
list_of_nice_to_have_casks=($raw_list_of_nice_to_have_casks)
nice_to_have "${list_of_nice_to_have_casks[@]}"

echo -e "${GREEN}Cleaning up${COLOR_RESET}"
brew cleanup
rm -rf "$(brew --cache)"

echo -e "${GREEN}Done${COLOR_RESET}"

echo -e "The following formulaes had been installed through brew install:"
brew list
echo -e"\nIf you think you don't need some of them, run:\n"
echo -e"brew uninstall <FORMULAE>\n"
echo -e"\nThe following casks had been installed through brew cask install:"
brew cask list
echo -e"\nIf you think you don't need some of them, run:"
echo -e"brew cask uninstall <CASK>"
echo -e "\nIf anything is missing, please search here:"
echo -e "https://formulae.brew.sh/"
echo -e "Here is another resourceful link, check it out:"
echo -e "https://github.com/jaywcjlove/awesome-mac"
echo -e "If you can, open a Pull Request, other people might have the same need as yours."