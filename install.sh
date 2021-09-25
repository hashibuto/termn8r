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

rm -rf ~/.local/share/nvim
rm -rf ~/.config/nvim
mkdir -p -m 755 ~/.local/share/nvim/site
mkdir -p -m 755 ~/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp init.vim ~/.config/nvim
cp coc-settings.json ~/.config/nvim/coc-settings.json
nvim +PlugInstall +qall
# Install Coc-pyright
nvim +CocInstall coc-pyright +qall

pushd .
cd ~/.config/nvim/bundle/coc.nvim
yarn install
yarn build
popd

sudo cp -f ./scripts/* /usr/local/bin
git config --global core.editor "nvim"
