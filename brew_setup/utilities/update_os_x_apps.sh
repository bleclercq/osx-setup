#!/bin/bash

GREEN="\033[0;32m"
ORANGE="\033[0;33m"
RED="\033[0;31m"
COLOR_RESET="\033[0m"

function update_os_x_apps {
    mas signout
    os_x_version=$(sw_vers -productVersion)
    last_os_x_working_mas_signin=10.13.0

    read -p "Do you want to update your mac's apps? (y/n) " do_update_raw

    do_update_answer=$(tr "[:upper:]" "[:lower:]"<<<${do_update_raw})

    if [[ $do_update_answer == "y" ]]; then
        :
    else
        return 0
    fi

    read -p "Do you have an apple account? (y/n) " apple_account_raw
    # Assuming bash version < 4 because default; reason: os x bash version is 3.2
    apple_account=$(tr "[:upper:]" "[:lower:]"<<<${apple_account_raw})

    if [[ $apple_account == "y" ]]; then
        :
    else
        echo -e "${RED}Make sure to create an apple account before launching this script.${COLOR_RESET}"
        echo -e "${RED}You can create an account using the App Store, already installed on this Mac.${COLOR_RESET}"
        exit 1
    fi

    # Check if the current system <major_version.minor_version> is > than 10.13
    # {...%.*} allow to convert xx.xx.xx into a float to make a comparison using bc
    result=`bc -l <<< "${os_x_version%.*}>${last_os_x_working_mas_signin%.*}"`
    if [ result ]; then
        echo -e "${ORANGE}Your Mac version is too high (check here for more details: https://github.com/mas-cli/mas/issues/164)${COLOR_RESET}"
        echo -e "${ORANGE}Please login using the App Store interface.${COLOR_RESET}"
        echo -e "${ORANGE}Come back here when it's done, this script is waiting for you.${COLOR_RESET}"
        mas open
        read -p "Just press enter to resume"
    else
        read -p "Enter your email: " user_apple_email
        read -p "Enter your password: " user_apple_password
        result=$(mas signin $user_apple_email $user_apple_password)
    fi

    echo "The following update might be long, come back in 20-ish minutes."

    mas upgrade
    mas signout

    echo -e "${GREEN}Success, everything has successfully been updated.${COLOR_RESET}"
}
