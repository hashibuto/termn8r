#!/bin/bash

set -e

sudo apt remove -y \
  cmdtest \
  yarn

sudo apt-get install -y \
  git \
  neovim \
  tmux

sudo npm install -g yarn

rm -rf ~/.vim
rm -rf ~/.local/share/nvim
rm -rf ~/.config/nvim
mkdir -p -m 755 ~/.local/share/nvim/site
mkdir -p -m 755 ~/.config/nvim

pushd .
cd ~/.local/share/nvim/site
git clone https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim
popd

cp init.vim ~/.config/nvim
nvim +PluginUpdate +qall

pushd .
cd ~/.vim/bundle/coc.nvim
yarn install
yarn build
popd

sudo cp -f ./scripts/* /usr/local/bin
git config --global core.editor "nvim"
