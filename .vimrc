" Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'drewtempelmeyer/palenight.vim'
call vundle#end()
filetype plugin indent on

" Setting new leader
let mapleader = ","

" Easier search shortcuts
map <space> /
map <C-space> ?

" Switching more easily between buffers
nnoremap gb :ls<CR>:b<Space>

" Close current buffer
map <leader>bd :Bclose<cr>

" Close all buffers
map <leader>ba :1,1000 bd!<cr>

" Fast parenthesis
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i

" NERDTree mappings
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

" Palenight colorscheme
set background=dark
colorscheme palenight


set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        "tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
set textwidth=120
" turn line numbers on
set number
