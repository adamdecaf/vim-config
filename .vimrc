""""""""""""""""""""""""""""""""""
" Syntax and indent
""""""""""""""""""""""""""""""""""
syntax on " Turn on syntax highligthing
set showmatch  "Show matching bracets when text indicator is over them

colorscheme delek

" Switch on filetype detection and loads 
" indent file (indent.vim) for specific file types
" filetype indent on
filetype on
" set autoindent " Copy indent from the row above
" set si " Smart indent

""""""""""""""""""""""""""""""""""
" Some other confy settings
""""""""""""""""""""""""""""""""""
" set nu " Number lines
set hls " highlight search
set lbr " linebreak

" Use 2 space instead of tab during format
set expandtab
set shiftwidth=2
set softtabstop=2

" Toggle Search Highlights with space
noremap <space> :set hlsearch! hlsearch?<CR>

" Use jj to escape back to normal mode
inoremap jj <esc>

" Jump to the start and end of lines with H and L
noremap H ^
noremap L $

" Use tab for autocompletetion
function! SuperTab()
    if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
        return "\<Tab>"
    else
        return "\<C-n>"
    endif
endfunction
imap <Tab> <C-R>=SuperTab()<CR>
