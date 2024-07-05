"
"
" @file: .vimrc
"

" Plugins
" source ~/.vim/plugins/cscope_maps.vim   " Lets you navigate the code
source ~/.vim/plugins/localrc.vim       " autoloads the directory specific .local.vimrc
" source ~/.vim/plugins/fzf.vim         " file finder

"  Plug 'preservim/nerdtree'             " directory browser
call plug#begin()
  Plug 'bling/vim-airline'              " theme
"   Plug 'majutsushi/tagbar'              " cool tag bar
  Plug 'wakatime/vim-wakatime'          " time tracking
call plug#end()

syntax on
filetype off
filetype plugin indent on
" colorscheme mustang

set ruler
set autoindent
set smartindent
set nocompatible
set number
" set relativenumber
set wildmenu                            " command completion
set hlsearch                            " hightlight search
set incsearch                           " incremental search
set tags+=tags;/                        " backward search for tags
set tabstop=4                           " change tabs with 4 space
set shiftwidth=4                        " add 4 spaces for indent shift
set expandtab
set backspace=indent,eol,start
set mouse-=a
" set cscopequickfix=s-,c-,d-,i-,t-,e-    " set cscope quick fixes

let g:airline#extensions#tagbar#flags = 'f'  " show full tag hierarchy

nnoremap tt :tabedit 
nnoremap tv :vsplit
nnoremap th :split

" Copy visually selected text to clipboard
vnoremap <C-c> "+y

" @ to highlight words under curser
nnoremap ! :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Jump to previous position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" NERDTree options
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
" autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" For supertab
packloadall
