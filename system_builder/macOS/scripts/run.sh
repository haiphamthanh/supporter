#!/bin/bash

# Run with bash command `bash run.sh`
mainmenu() {
    echo -ne "
MAIN MENU
0) Exit
1) Install software (For new computer)
2) Update your computer
Choose an option:  "
    read -r ans
    case $ans in
    1)
        chmod +x system/setup.sh
        ./system/setup.sh
        mainmenu
        ;;
    2)
        chmod +x system/update.sh
        ./system/update.sh
        mainmenu
        ;;
    0)
        echo "Bye bye."
        exit 0
        ;;
    *)
        echo "Wrong option."
        exit 1
        ;;
    esac
}

mainmenu


# Create menu: https://towardsdatascience.com/how-to-create-a-foolproof-interactive-terminal-menu-with-bash-scripts-97911586d4e5
# submenu() {
#     echo -ne "
# SUBMENU
# 1) SUBCMD1
# 2) Go Back to Main Menu
# 0) Exit
# Choose an option:  "
#     read -r ans
#     case $ans in
#     1)
#         sub-submenu
#         submenu
#         ;;
#     2)
#         menu
#         ;;
#     0)
#         echo "Bye bye."
#         exit 0
#         ;;
#     *)
#         echo "Wrong option."
#         exit 1
#         ;;
#     esac
# }

# mainmenu() {
#     echo -ne "
# MAIN MENU
# 1) CMD1
# 0) Exit
# Choose an option:  "
#     read -r ans
#     case $ans in
#     1)
#         submenu
#         mainmenu
#         ;;
#     0)
#         echo "Bye bye."
#         exit 0
#         ;;
#     *)
#         echo "Wrong option."
#         exit 1
#         ;;
#     esac
# }

# mainmenu