" map leader key
let mapleader=","

" configure tabwidth and insert spaces instead of tabs
set tabstop=3 	    " tab width is 3 spaces
set shiftwidth=3   " indent also with 3 spaces
set expandtab      " expand tabs to spaces

" use indentation of previous line
set autoindent
" use intelligent idndentation for C
set smartindent

" turn line numbers on
set number
set relativenumber

" show the current row and column at the bottom  right of the screen
set ruler

" set textwidth for wrapping
set tw=80

" set colorcolumn to 80
set cc=80

" enables syntax highlighting
syntax on

" ignore case when searching
set ignorecase
" when searching try to be smart about cases
set smartcase
" highlight search results
set hlsearch
" makes search act like search in modern browsers
set incsearch
" this unsets the "last search pattern" register by hitting return
" nnoremap <CR> :noh<CR><CR>

" highligh matching braces
set showmatch

" vim-clang-format settings
let g:clang_format#code_style='llvm'

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'

let g:Tex_CompileRule_pdf =
      \ 'pdflatex --synctex=1 -interaction=nonstopmode -shell-escape "$*"'

" associate F4 keystroke to latex fowrward sync between vim & evince using 
" synctex
nmap <F4> :call SVED_Sync()<CR>

