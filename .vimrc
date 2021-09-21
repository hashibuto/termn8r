set nocompatible              " be iMproved, required
filetype off                  " required
set belloff=all

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'eslint/eslint'
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Key maps
" -----------------------------------------------------------------------------
map <C-e> :Explore<CR>
