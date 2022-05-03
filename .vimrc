set encoding=utf-8
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
nnoremap <C-n> :NERDTreeToggle<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

set tabstop=2
set shiftwidth=2

set list
set listchars=space:·,tab:\ \ ,eol:¬

highlight SpecialKey ctermfg=DarkGray
highlight NonText ctermfg=DarkGray

set ruler
set relativenumber

set mouse=a
