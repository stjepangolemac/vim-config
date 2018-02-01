#!/bin/bash

cd ~/.vim-config

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp gvimrc ~/.gvimrc
cp vimrc ~/.vimrc

ln -s ~/.vim-config/update.sh /usr/local/bin/vim-config-update

vim +PluginInstall +qa

