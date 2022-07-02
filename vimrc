" Display settings
set showcmd 	" Show (partial) command in status line.
set showmatch 	" Show matching brackets.o
set laststatus=2
set number 	" Show line number
set wrap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Theme
"
" Turn on syntax highlighting.
syntax on
" C indent
" Tricks:
" current line:
" == 
" all code:
" gg=G
" inside a block
" =a{
set cindent shiftwidth=8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ignorecase 	" Do case insensitive matching
set smartcase 	" Do smart case matching
set incsearch 	" Incremental search
set autowrite 	" Automatically save before commands like :next and :make
set hidden 	" Hide buffers when they are abandoned
set mouse=a 	" Enable mouse usage (all modes)




" Movement
" 
" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

runtime! ftplugin/man.vim


" Maps
nmap t<Space>c :tabclose <CR>
nmap t<Space>f <C-w>\|
nmap t<Space>e <C-w>=


"Plugins
set rtp+=/home/kisi/.vim/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'

call vundle#end()

" System
set fileformat=unix



