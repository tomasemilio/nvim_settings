"""""""""""""""""""""""BASIC OPTIONS""""""""""""""""""""""""""""
set nocompatible
filetype off
set hlsearch
set tabstop=4 softtabstop=4
set number
syntax enable
set clipboard=unnamedplus

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

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"""" Colorschemes
Plug 'morhetz/gruvbox'

call plug#end()

"""""""""""""""""""""""NERD TREE""""""""""""""""""""""""""""
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
autocmd VimEnter * vs | terminal
autocmd VimEnter * wincmd j

tnoremap <Esc> <C-\><C-n>

"""""""""""""""""""""""COLORSCHEME""""""""""""""""""""""""""""
if (has('termguicolors'))
  set termguicolors
endif

colorscheme gruvbox


"""""""""""""""""""""""TREESITTER INSTALLS""""""""""""""""""""""""""""
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF
