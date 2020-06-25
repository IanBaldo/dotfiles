#!/bin/bash

sudo apt -qq install vim -y
sudo apt -qq install python3-dev cmake -y

# Copy Files
echo "Copying init.vim to ~/.vim/"
cp $1/nvim/init.vim ~/.vimrc
mkdir ~/.vim/undodir -p

# Install Plug - VIM PLugin Manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -u ~/.vimrc -c 'PlugInstall' +qall

# Install YCM
~/.vim/plugged/YouCompleteMe/install.py

echo "alias vi=\"vim\"" >> ~/.bash_aliases 
