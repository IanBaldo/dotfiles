#!/bin/bash

sudo apt -qq install neovim
sudo apt -qq install python3-dev cmake


# Copy Files
echo "Copying init.vim to ~/.config/nvim/"
mkdir -p ~/.config/nvim/ && cp $1/nvim/init.vim ~/.config/nvim/
mkdir ~/.vim/undodir -p

# Install Plug - VIM Plugin Manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'     

# Install Plug Plugins
nvim -u ~/.config/nvim/init.vim -c 'PlugInstall' +qall

# Install YCM
~/.vim/plugged/YouCompleteMe/install.py
