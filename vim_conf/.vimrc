set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
colorscheme mustang

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugins')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'

" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required


" airline extentions
let g:airline#extensions#fugitiveline=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tmuxline#enabled=0
let g:airline_theme='minimalist'

filetype plugin indent on    " required

set shell=/bin/bash

" traverse tags in parent directory
set tags=tags;/

set hlsearch
set incsearch

set number
set wildmenu
set laststatus=2

set autoindent
set smartindent
set noexpandtab
set tabstop=8
set shiftwidth=8

if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	\| exe "normal! g'\"" | endif
endif

" navigate to next tab using (ALT + [)
" nmap <Esc>[ :tabn<CR>
" navigate to prev tab using (ALT + ])
" nmap <Esc>] :tabp<CR>
nnoremap tt  :tabedit<Space>
nnoremap ht  :split<Space>
nnoremap vt  :vsplit<Space>

source /home/shubham/.vim/plugins/cscope_maps.vim
source /home/shubham/.vim/plugins/fzf.vim

" map ALT + f for opening selected file in new tab
nmap <Esc>f :call fzf#run({'sink': 'tabedit', 'down': '40%'})<CR>
nmap <Esc>hf :call fzf#run({'sink': 'split', 'down': '40%'})<CR>
nmap <Esc>vf :call fzf#run({'sink': 'vsplit', 'down': '40%'})<CR>

" F8 to highlight words under curser
:nnoremap <F9> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

set backspace=indent,eol,start
