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

" initialize vimplug
call plug#begin('~/.vim/bundle')

" Plugins
" -----------------------------------------------------------------------------
Plug 'axelf4/vim-strip-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kassio/neoterm'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc-tsserver'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tomasiser/vim-code-dark'
Plug 'VundleVim/Vundle.vim'
" -----------------------------------------------------------------------------

" All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on    " required


colorscheme codedark

let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'absolutepath', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name'
  \ },
  \ 'colorscheme': 'wombat',
  \ }

" Neoterm mappings
let g:neoterm_default_mod = 'vertical'
let g:neoterm_size = 60
let g:neoterm_autoinsert = 1

" FZF mappings
nnoremap <C-P> :Files<CR>
inoremap <C-P> <Esc>:Files<CR>
nnoremap <C-F> :Ag<CR>
inoremap <C-F> <Esc>:Ag<CR>

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
