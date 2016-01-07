" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Sets how many lines of history VIM has to remember
set history=500

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Pathogen
execute pathogen#infect()

" Switch syntax highlighting on
syntax on

" Set to auto read when a file is changed from the outside
set autoread

filetype plugin on 	  " filetype detection
filetype indent on 	  " language-dependent indenting
set hidden                " allow hidden buffers
set number                " show line numbers
set ruler                 " show the cursor position all the time
set showcmd               " display incomplete commands
set incsearch             " do incremental searching
set hlsearch              " highlight last used search pattern
set clipboard=unnamedplus " yank to global clipboard


" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase


" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit extra margin to the left
set foldcolumn=1


try
  colorscheme desert
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif

" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 80 characters
set lbr
set tw=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Mouse in terminal emulator 
if has('mouse')
  set mouse=a
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
language en_US.UTF-8                 " sets the language of the messages / ui (vim)

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
