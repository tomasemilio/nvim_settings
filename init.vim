"""""""""""""""""""""""BASIC OPTIONS""""""""""""""""""""""""""""
filetype off
set nocompatible
set nohlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set foldmethod=manual
set number
set rnu
set nowrap
set noswapfile
set nobackup
set incsearch
set scrolloff=8
set termguicolors
set splitright "Pane splitting, also add splitbelow
syntax enable
set clipboard=unnamedplus "Yank to clipboard
set signcolumn=yes
set colorcolumn=80
set laststatus=3

let g:python_recommended_style=0 "Use PEP8 style


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

"Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Indentation lines
" Plug 'lukas-reineke/indent-blankline.nvim'

"Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"Finder
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

"Colorscheme
Plug 'morhetz/gruvbox'

"LSP Config
Plug 'neovim/nvim-lspconfig'

"Autocompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

"Closing pairs
Plug 'jiangmiao/auto-pairs'

"Transparent background
Plug 'xiyaowong/nvim-transparent'

" Comment
Plug 'numToStr/Comment.nvim'

" Copilot
Plug 'github/copilot.vim'
"
" Toggle Terminal
Plug 'akinsho/toggleterm.nvim'

call plug#end()

""""""""""""""""""""""COLORSCHEME""""""""""""""""""""""""""""
colorscheme gruvbox

let g:gruvbox_bold = 0
let g:gruvbox_italic = 1 
let g:gruvbox_contrast_dark = 'hard'

"""""""""""""""""""""""PANES NAVIGATION""""""""""""""""""""""""""""
let mapleader = " "

" Move between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>


" Split screen into 4.
" nnoremap <C-z> :vs \| :vs \| :wincmd h \| :vs<CR>
nnoremap <C-z> :vs \| :vs \| :wincmd h \| :vs<CR>

" augroup Navigation
" 	autocmd VimEnter * vs
" 	autocmd VimEnter * vs
" 	autocmd VimEnter * wincmd h
" augroup END

tnoremap <Esc> <C-\><C-n>

"""""""""""""""""""""""MAPPINGS""""""""""""""""""""""""""""
vnoremap <leader>p "_dP

"""""""""""""""""""""""COMMENT""""""""""""""""""""""""""""
lua require('Comment').setup()

"""""""""""""""""""""""TRANSPARANCY""""""""""""""""""""""""""""
let g:transparent_enabled = v:true

"""""""""""""""""""""""TREESITTER ENABLE ALL""""""""""""""""""""""""""""
lua require('treesitter_custom')

""""""""""""""""""""""""TELESCOPE"""""""""""""""""""""""""""
nnoremap <leader>ff <cmd>Telescope find_files no_ignore=true<cr>
nnoremap <leader>fF <cmd>Telescope find_files search_dirs=~/Documents<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fG <cmd>Telescope live_grep max_results=50 search_dirs=~/Documents<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua require('telescope_custom')
"
"""""""""""""""""""""""""LSP CONFIG""""""""""""""""""""""""""
lua require('lsp_custom')
"
""""""""""""""""""""""""AUTOCOMPLETE"""""""""""""""""""""""""""""""""
set completeopt=menu,menuone,noselect
lua require('autocomplete_custom')
"
"""""""""""""""""""""""""""ToggleTerm"""""""""""""""""""""""""""
lua require('toggleterm_custom')

""""""""""""MANUAL FIXES AT THE END """"""""""""
augroup Navigation
	autocmd VimEnter * source ~/.config/nvim/init.vim
	autocmd VimEnter * highlight WinSeparator guibg=None
augroup END
