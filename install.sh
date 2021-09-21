#!/bin/bash

sudo apt-get install -y \
  git \
  tmux \
  vim

rm -rf ~/.vim
rm -f ~/.vimrc
mkdir -m 755 ~/.vim

pushd .
cd ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim
popd

cp .vimrc ~
vim +PluginUpdate +qall
sudo cp -f ./scripts/* /usr/local/bin
