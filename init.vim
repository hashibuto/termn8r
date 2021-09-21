set nocompatible              " be iMproved, required
filetype off                  " required
set belloff=all
set splitright
set splitbelow
set expandtab
set number
set ignorecase
set smartcase
set hidden
set nowritebackup
set termguicolors
let g:netrw_banner=0

" set the runtime path to include Vundle and initialize
set rtp+=~/.local/share/nvim/site/bundle/Vundle.vim
call vundle#begin()

" Plugins
" -----------------------------------------------------------------------------
Plugin 'axelf4/vim-strip-trailing-whitespace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'itchyny/vim-gitbranch'
Plugin 'kassio/neoterm'
Plugin 'leafgarland/typescript-vim'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'neoclide/coc.nvim'
Plugin 'neoclide/coc-tsserver'
Plugin 'pangloss/vim-javascript'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'tomasiser/vim-code-dark'
Plugin 'VundleVim/Vundle.vim'
" -----------------------------------------------------------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


colorscheme codedark
let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name'
  \ },
  \ 'colorscheme': 'codedark',
  \ }

" Neoterm mappings
let g:neoterm_default_mod = 'vertical'
let g:neoterm_size = 60
let g:neoterm_autoinsert = 1

" Filetype specific stuff
" -----------------------------------------------------------------------------
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=0
autocmd Filetype javascriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=0
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=0
autocmd Filetype typescriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=0
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=0

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

" terminal
nnoremap <C-T> :Ttoggle<CR>
inoremap <C-T> <Esc>:Ttoggle<CR>
tnoremap <C-T> <C-\><C-N>:Ttoggle<CR>
" -----------------------------------------------------------------------------
