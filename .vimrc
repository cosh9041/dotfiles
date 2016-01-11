set nocompatible
set hidden

set ruler

" spacing stuff
set tabstop=2
"set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" UI stuff
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
"set nowrap

set modeline

set laststatus=2

set backspace=2

syntax on

" set up searching mechanisms
set incsearch
set hlsearch



set history=1000

set listchars=extends:>,precedes:<,eol:$

set wildmode=longest:full

set mouse=a
set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


" set up jsbeautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" remaps
noremap! <space>; <Esc>

set background=dark
set t_Co=256

colors desert 

set backup
set backupdir=~/.vim/backup/
autocmd vimenter * NERDTree
" set filetype on so we don't return a non-zero exit code due to next line
filetype on
" filetype being on breaks pathogen
filetype off

" startup vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle (required)
Plugin 'gmarik/Vundle.vim'

" add plugins here "
Bundle 'sjl/gundo.vim'
Bundle 'fatih/vim-go'
Bundle 'jnurmine/Zenburn'
Bundle 'scrooloose/nerdtree'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'dart-lang/dart-vim-plugin'

call vundle#end()
filetype plugin indent on


