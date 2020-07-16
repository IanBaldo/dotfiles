set noerrorbells "No error bells
set tabstop=4 softtabstop=4 "TAB size
set shiftwidth=4
set expandtab "TAB to Spaces
set nu rnu "Relative Line numbers
set nowrap "No wrapping lines
set smartcase "Searching is case insensitive until first capital
set noswapfile "doesn't create the .swp file
set nobackup
set undodir=~/.config/nvim/undodir "Undo directory
set undofile
set incsearch "Show results as you search

set colorcolumn=90
highlight ColorColumn ctermbg=0 guibg=lightgrey "Highlight the 90 char mark



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
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader=" "

let g:ctrlg_use_cache=0
let g:ctrlp_use_cache=0
let NERDTreeQuitOnOpen=1

"Windows Commands
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>t :NERDTree<CR>

"fzf
nnoremap <leader>g :Buffers<CR>
nnoremap <silent> <C-g> :Files<CR>
nnoremap <silent> <C-p> :GFiles<CR>




