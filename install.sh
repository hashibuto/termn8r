#!/bin/bash

set -e

sudo apt remove -y \
  cmdtest \
  yarn

sudo apt-get install -y \
  git \
  neovim \
  silversearcher-ag \
  tmux

sudo npm install -g yarn

rm -rf ~/.vim
rm -rf ~/.local/share/nvim
rm -rf ~/.config/nvim
mkdir -p -m 755 ~/.local/share/nvim/site
mkdir -p -m 755 ~/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp init.vim ~/.config/nvim
nvim +PlugInstall +qall

pushd .
cd ~/.vim/bundle/coc.nvim
yarn install
yarn build
popd

sudo cp -f ./scripts/* /usr/local/bin
git config --global core.editor "nvim"
