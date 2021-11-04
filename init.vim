"""""""""""""""""""""""BASIC OPTIONS""""""""""""""""""""""""""""
set nocompatible
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
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

call plug#end()

"""""""""""""""""""""""NERDTREE""""""""""""""""""""""""""""
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden = 1

"""""""""""""""""""""""PANES NAVIGATION""""""""""""""""""""""""""""
" Move between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Open terminal and another pane by default
set splitright 
" Options to have a grid with 3 windows and 1 terminal incorporated.
autocmd VimEnter * sp | terminal
autocmd VimEnter * resize -25
autocmd VimEnter * wincmd j
autocmd VimEnter * vs
autocmd VimEnter * vs

tnoremap <Esc> <C-\><C-n>

"""""""""""""""""""""""COLORSCHEME""""""""""""""""""""""""""""
colorscheme material

if (has('termguicolors'))
  set termguicolors
endif

let g:material_terminal_italics = 1
let g:airline_theme = 'material'

