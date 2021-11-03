"""""""""""""""""""""""BASIC OPTIONS"""""""""""""""""""""""""""" set nocompatible
filetype off
set hlsearch
set tabstop=4 softtabstop=4
set number
syntax enable

"""""""""""""""""""""""VIM PLUG""""""""""""""""""""""""""""
" Install vim-plug if not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jacoborus/tender.vim'

call plug#end()

"""""""""""""""""""""""PANES NAVIGATION""""""""""""""""""""""""""""
" Move between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Open terminal and another pane by default
set splitbelow splitright 
" Options to have a grid with 3 windows and 1 terminal incorporated.
autocmd VimEnter * sp | terminal
autocmd VimEnter * resize -15
tnoremap <Esc> <C-\><C-n>

"""""""""""""""""""""""NERDTREE""""""""""""""""""""""""""""
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden = 1

"""""""""""""""""""""""COLORSCHEME""""""""""""""""""""""""""""

if (has("termguicolors"))
 set termguicolors
endif

colorscheme tender

let g:lightline = { 'colorscheme': 'tender' }

