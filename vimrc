" Display settings
set showcmd 	" Show (partial) command in status line.
set showmatch 	" Show matching brackets.o
set laststatus=2
set number 	" Show line number
set wrap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Theme
"

set ruler	" Show row and column ruler information
colorscheme murphy
"highlight NERDTreeCWD ctermfg=white
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
nmap t<Space>n :NERDTree <CR>
nmap t<Space>nc :NERDTreeClose <CR>
" Map Escape to jj to easily switch between insert and normal mode
inoremap jj <ESC>


"Plugins
set rtp+=/home/kisi/.vim/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'

call vundle#end()

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
nnoremap <C-f> :NERDTreeFind <CR>


" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>

" System
set fileformat=unix



