#!/bin/bash

cd ~/.vim-config

git pull

cp gvimrc ~/.gvimrc
cp vimrc ~/.vimrc

vim +PluginClean +PluginInstall +qa
