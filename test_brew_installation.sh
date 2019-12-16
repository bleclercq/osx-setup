#!/bin/bash

cd brew_setup
source ./utilities/update_os_x_apps.sh
source ./utilities/brew_installs_list.sh
source ./utilities/brew_fetchs.sh
source ./utilities/nice_to_have.sh

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

if [ $? == 0 ]; then
    echo pass
else
    echo fail
    exit 1
fi