#!/bin/system'Debian'

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

pkg install figlet
apt install bash
echo $RED "If echo permission on your terminal denied, change at '$'"
sleep 1
echo $CYAN "Installing : proot/deb"
pkg install tsu
pkg install upgrade && update && pkg install sudo && pkg install root-repo && pkg install proot && pkg install proot-distro
echo $GREEN "Installing Debian Route..."
proot-distro list
proot-distro install debian
echo $GREEN "Login : "$CYAN " proot-distro login debian"
echo $GREEN "Reinstall : "$CYAN " proot-distro reset debian"
echo $GREEN "Remove : "$CYAN " proot-distro remove debian"
sleep 5
