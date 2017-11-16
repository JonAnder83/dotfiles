" Using the arrow keys is evil!
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <down> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <down> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <down> <Nop>

filetype plugin on
filetype indent on
syntax enable
" Show matching brackets when text indicator is over them
set showmatch
" Show line numbers
set number
" Highlight the search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Use Vim defaults instead of 100% vi compatibility
set nocompatible                
set backspace=indent,eol,start  " more powerful backspacing
" Now we set some defaults for the editor
set history=50                  " keep 50 lines of command line history
set ruler                       " show the cursor position all the time
" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg
:highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set guifont=Menlo:h14
set encoding=utf8
" When copying text with the mouse, don't copy the line numbers
set mouse=a
" Tab introduces 4 spaces, for real tab, ctrl+tab
set expandtab
" Tab inserts 8 spaces
set ts=8
" Show the command being typed
set showcmd
set viminfo='20,\"50
" Smart Indenting
set si
" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Always show the status line
set laststatus=2

" Set font according to system
if has("mac") || has("macunix")
    set gfn=Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=Hack:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif
