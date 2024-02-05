" Begin Plug configuration for Vim-Plug
call plug#begin('~/.vim/plugged')

 " Install NERDTree plugin
 Plug 'preservim/nerdtree'

 " Install coc.nvim plugin with specified branch
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

 " Install Papercolor theme
 Plug 'NLKNguyen/papercolor-theme'

" End Plug configuration
call plug#end()

" Enable syntax highlighting
syntax on

" Display line numbers
set number

" Enable relative line numbers
set relativenumber

" Set tab width to 4 spaces
set tabstop=4

" Set the width of an indent to 4 spaces
set shiftwidth=4

" Use spaces instead of tabs for indentation
set expandtab

" Automatically indent new lines
" set autoindent
" set smartindent

" Enable highlight for search pattern
set hlsearch

" Incremental search
set incsearch

" Enable mouse support
set mouse=a

" Highlight the current line
set cursorline
highlight Cursorline cterm=bold ctermbg=black

" Show matching parentheses or brackets
set showmatch

" Set background to dark
" set background=dark

" Use the 'habamax' colorscheme
colorscheme habamax
highlight Normal ctermbg=none
highlight NonText ctermbg=none


" Visual mode mapping to copy to system clipboard
vnoremap <F1> "+y

" Normal mode mapping to copy entire file to system clipboard
nnoremap <F12> :%y+<CR>

" Spell checking
set spell spelllang=en_us

inoremap jk <Esc>
