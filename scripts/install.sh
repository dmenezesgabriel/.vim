#!/bin/sh

# Install vim
sudo apt install vim
# CLone configs
git clone git@github.com:dmenezesgabriel/.vim.git ~/.vim
# Install Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Install plugins
vim +'PlugInstall' +qa
# Set symlink
ln -s ~/.vim/vimrc ~/.vimrc