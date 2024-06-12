#!/bin/bash

# Configure bash options
set -o pipefail

# Configure colors
RESET="\033[0m"; BOLD="\033[1m"; GRAY="\033[30m"; RED="\033[31m"; GREEN="\033[32m"; YELLOW="\033[33m"; BLUE="\033[34m"; CYAN="\033[36m"; ORANGE="\033[38;5;208m"

# Set gch and config URLs
gch_url="https://github.com/extrymes/changelog-generator/releases/latest/download/gch"
config_url="https://github.com/extrymes/changelog-generator/releases/latest/download/config.json"

# Set gch dir
gch_dir="$HOME/.local/changelog-generator"

# Get shell file
shell=$(basename $SHELL)
shell_file="$HOME/.${shell}rc"

# Throw error
function throw_error() {
	echo -e "${RED}error: ${1}${RESET}"
	exit 1
}

# Check return code
function check_return_code() {
	if [ $? -eq 0 ]; then
		echo -e "${GREEN}done${RESET}"
	else
		echo -e "${RED}failed${RESET}"
		exit 1
	fi
}

# Ask user
function ask_user() {
	echo -ne "${CYAN}${1} ${GRAY}(${2})${RESET} "
	read -n 1 -r
	echo
	if [[ $REPLY =~ ^[Nn]$ ]]; then
		exit 0
	fi
}

# Print installer options
echo -e "${BOLD}Welcome to the changelog generator installer!${RESET}"
echo "Please choose an option:"
echo -e "${YELLOW}I${RESET} - Install/update gch (latest version)"
echo -e "${YELLOW}U${RESET} - Uninstall gch"
echo -e "${YELLOW}Q${RESET} - Quit"

# Ask user to choose an option
echo -ne "${CYAN}Your choice:${RESET} "
read -n 1 -r
echo

# Save user choice
save_reply=$REPLY

# Check if choice is valid
[[ $save_reply =~ ^[IiUuQq]$ ]] || throw_error "invalid choice"

# Check if choice is to quit
[[ $save_reply =~ ^[Qq]$ ]] && exit 0

# Check if choice is to uninstall
if [[ $save_reply =~ ^[Uu]$ ]]; then
	# Ask user to uninstall gch
	ask_user "Are you sure you want to uninstall gch?" "[Y/n]"
	echo -n "Uninstalling gch... "
	rm -rf $gch_dir
	check_return_code
	exit 0
fi

# Ask user to install gch
ask_user "Are you sure you want to install gch?" "[Y/n]"

# Create gch directory if does not exist
if ! [ -d $gch_dir ]; then
	echo -n "Creating directory... "
	mkdir -p $gch_dir &> /dev/null
	check_return_code
fi

# Download gch file
echo -n "Downloading gch... "
curl -sL $gch_url -o $gch_dir/gch
check_return_code

# Download config file
echo -n "Downloading config file... "
curl -sL $config_url -o $gch_dir/config.json
check_return_code

# Make gch file executable
echo -n "Setting permissions... "
chmod +x $gch_dir/gch &> /dev/null
check_return_code

# Add gch directory to PATH if it is not
if [[ ":$PATH:" != *":$gch_dir:"* ]]; then
	echo -n "Adding directory to PATH... "
	echo "export PATH=\$HOME/.local/changelog-generator:\$PATH" >> $shell_file
	check_return_code
fi

# Print gch usage
echo -e "\nYou can now run ${BLUE}${BOLD}gch${RESET} in a local repository."

# Launch new shell instance
$shell

# Exit script
exit 0
