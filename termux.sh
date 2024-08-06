#!/bin/bash

# Function to update the repository
update_repository() {
    echo "Updating repository..."
    bash update.sh
    echo "Repository updated successfully!"
}

# Main script
clear
echo
pkg install pv -y >/dev/null 2>&1
echo -e "\033[32m\033[1m{───────────────────────────────────────────────────}"
echo -e "\033[33m\033[1m   Installing All Required Packages! Please Wait..." | pv -qL 10
apt update                    
apt upgrade -y 
pkg install bash
pkg install cmatrix
pkg install pv -y 
apt install figlet -y  
echo -e "\033[31m\033[1m        INSTALLATION COMPLETED \033[32m[\033[36m✓\033[32m]" | pv -qL 12
echo -e "\033[33m\033[1m]────────────────────────────────────────────["
termux-setup-storage
cd $HOME/hack
bash banner.sh

# Run login script
bash bgaii.sh

