"Location: ~/.config/nvim/init.vim
syntax on

set noerrorbells "No error bells
set tabstop=4 softtabstop=4 "TAB size
set shiftwidth=4
set expandtab "TAB to Spaces
set nu rnu "Relative Line numbers
set nowrap "No wrapping lines
set smartcase "Searching is case insensitive until first capital
set noswapfile "???
set nobackup "???
set undodir=~/.config/nvim/undodir "Undo directory
set undofile
set incsearch "Show results as you search

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey "Highlight the 80 char mark



call plug#begin('~/.vim/plugged')

Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'Valloric/YouCompleteMe'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader=" "


"fzf keybinds
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-q> :Buffers<CR>
nnoremap <C-f> :Rg  

