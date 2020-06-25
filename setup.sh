#!/bin/bash

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Setup DotFiles

# Install
echo "Installing software..."
sudo apt -qq install git -y
sudo apt -qq install curl -y
sudo apt -qq install chromium-browser -y
sudo apt -qq install neovim -y
sudo apt -qq install python3-dev cmake -y # YouCompleteMe dependencies

# Copy Files
echo "Copying init.vim to ~/.config/nvim/"
mkdir -p ~/.config/nvim/ && cp $ABSOLUTE_PATH/nvim/init.vim ~/.config/nvim/
mkdir ~/.vim/undodir -p

# Install Plug - VIM Plugin Manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'     

# Install Plug Plugins
nvim -u ~/.config/nvim/init.vim -c 'PlugInstall' +qall

# Install YCM
~/.vim/plugged/YouCompleteMe/install.py

# Add custom aliases
echo "#Custom Alias [BALDO]" >> ~/.bashrc
echo "alias vim=\"nvim\"" >> ~/.bashrc                                          
echo "alias gits=\"git status\"" >> ~/.bashrc                                          
echo "alias gc=\"git commit -m \"" >> ~/.bashrc
echo "alias x=\"exit\"" >> ~/.bashrc                                          

source ~/.bashrc
