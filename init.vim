set nocompatible              " be iMproved, required
filetype off                  " required
set belloff=all

" set the runtime path to include Vundle and initialize
set rtp+=~/.local/share/nvim/site/bundle/Vundle.vim
call vundle#begin()

" Plugins
" -----------------------------------------------------------------------------
Plugin 'axelf4/vim-strip-trailing-whitespace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'neoclide/coc.nvim'
Plugin 'neoclide/coc-tsserver'
Plugin 'pangloss/vim-javascript'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'VundleVim/Vundle.vim'
" -----------------------------------------------------------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Filetype specific stuff
" -----------------------------------------------------------------------------
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype javascriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype typescriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
" -----------------------------------------------------------------------------

" Key maps
" -----------------------------------------------------------------------------
map <C-e> :Explore<CR>
nnoremap <C-Z> u
nnoremap <C-Y> <C-R>
inoremap <C-Z> <C-O>u
inoremap <C-Y> <C-O><C-R>
" -----------------------------------------------------------------------------
