"""""""""""""""""""""""""""""""""
" Syntax and indent
""""""""""""""""""""""""""""""""""
syntax on " Turn on syntax highligthing
set showmatch  "Show matching bracets when text indicator is over them

colorscheme koehler

" Switch on filetype detection and loads
" indent file (indent.vim) for specific file types
" filetype indent on
filetype on
set history=1000
set tabpagemax=50

""""""""""""""""""""""""""""""""""
" Some other confy settings
""""""""""""""""""""""""""""""""""
noremap <C-n> :set nu! nu?<CR>
set hls " highlight search
set ignorecase
set incsearch
set lbr " linebreak
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5

" Stupid shift key fixes
cmap W w
cmap WQ wq
cmap Wq wq
cmap wQ wq
cmap Q q
cmap Tabe tabe
cmap Tabnew tabnew
cmap Tabdo tabdo

" Create a shotcut for opening a new tab and
" opening a file.
map <C-m> <esc>:tabnew<CR>:e

" Remove whitespace at the end of a file on write
autocmd BufWritePre * :%s/\s\+$//e

" Map C-d to the bash logout
noremap <C-d> :q<CR>

" View the current tabs in a session
noremap <C-t> :tabs<CR>

" Enable shorcuts to split windows
map <C-u> :split<CR>
map <C-i> :vsplit<CR>

" Use Python as a calculator
:command! -nargs=+ Calc :py print <args>
:py from math import *

" Easier moving in tabs and windows
map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
map <C-L> <C-W>l<C-W>
map <C-H> <C-W>h<C-W>

" Turn Spelling Optionally On
map S :setlocal spell! spelllang=en_us<CR>

" Use 2 space instead of tab during format
set expandtab
set shiftwidth=2
set softtabstop=2

" Enable a faster scroll
nnoremap J 10<C-e>
nnoremap K 10<C-y>

" Open the NERDTree
noremap <C-o> :NERDTree<CR>

" Don't show the annoying tab bar
set showtabline=0

" Toggle Search Highlights with space
noremap <space> :set hlsearch! hlsearch?<CR>

" Use jj to escape back to normal mode
inoremap jj <esc>

" Jump to the start and end of lines with H and L
noremap H ^
noremap L $

" Disable F1 help menu
nnoremap <F1> <nop>
inoremap <F1> <nop>

" Use tab for autocompletetion
function! SuperTab()
    if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
        return "\<Tab>"
    else
        return "\<C-n>"
    endif
endfunction
imap <Tab> <C-R>=SuperTab()<CR>

" Show formatting for json
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END
