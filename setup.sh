#!/bin/bash

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Setup DotFiles

# Install
echo "Installing software..."
sudo apt update
sudo apt -qq install build-essential -y
sudo apt -qq install curl -y
sudo apt -qq install chromium-browser -y
sudo apt -qq install node -y

# Add custom aliases
echo "#Custom Alias [BALDO]" >> ~/.bash_aliases
echo "alias gits=\"git status\"" >> ~/.bash_aliases                                          
echo "alias x=\"exit\"" >> ~/.bash_aliases                                          

if [ $# -eq 0 ]; then
    # Install my default configuration
    bash $ABSOLUTE_PATH/vim/setup.sh $ABSOLUTE_PATH
else
    for var in "$@"
    do
        if [ -d "$var" ]; then
            bash $ABSOLUTE_PATH/$var/setup.sh $ABSOLUTE_PATH
        fi
    done
fi


source ~/.bashrc
