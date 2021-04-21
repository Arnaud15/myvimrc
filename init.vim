set nocompatible

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" coc extensions
" Python


call plug#end()


" coc setup
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set signcolumn=yes

" highlight in search
nnoremap <CR> :noh<CR><CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" set leader
let g:mapleader = "\<Space>"


nnoremap <C-F> :execute 'Rg ' . input('Rg/')<CR>
nnoremap <leader>/ :BLines<CR>
nnoremap <c-p> :ProjectFiles<cr>

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()

" Switching more easily between buffers
nnoremap gb :ls<CR>:b<Space>

" Close current buffer
map <leader>bd :Bclose<cr>

" Close all buffers
map <leader>ba :1,1000 bd!<cr>

" use gruvbox dark mode
colorscheme gruvbox
set background=dark

" no swap files
set noswapfile
" show matching brackets
set showmatch
" carriage return better
set backspace=indent,eol,start
" history of previous commands
set history=1000

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
" spaces no tab
set expandtab
set smartindent
" numbers
set nu
" case insensitive search until cap 
set smartcase
" incremental search while typing
set incsearch
" highlight search while typing
set hlsearch

" :source % to source the current file

" python interpreter
let g:python3_host_prog = '/home/ubuntu/miniconda3/bin/python'
