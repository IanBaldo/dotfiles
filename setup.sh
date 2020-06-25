#!/bin/bash

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Setup DotFiles

# Install
echo "Installing software..."
sudo apt -qq install git -y
sudo apt -qq install curl -y
sudo apt -qq install chromium-browser -y

# Add custom aliases
echo "#Custom Alias [BALDO]" >> ~/.bashrc
echo "alias vim=\"nvim\"" >> ~/.bashrc                                          
echo "alias gits=\"git status\"" >> ~/.bashrc                                          
echo "alias x=\"exit\"" >> ~/.bashrc                                          

bash $ABSOLUTE_PATH/nvim/setup.sh $ABSOLUTE_PATH

source ~/.bashrc
