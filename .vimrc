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
syntax on
" Show line numbers
set number
" Highlight the search results
set hlsearch
set nocompatible                " Use Vim defaults instead of 100% vi compatibility
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
set mouse=a
set expandtab
set ts=8
set showcmd
set viminfo='20,\"50
set si

