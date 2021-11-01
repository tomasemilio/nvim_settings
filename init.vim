" Basic options
set nocompatible
filetype off
set hlsearch
set tabstop=4 softtabstop=4
set number


" Vim plugin is a simple installer
call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Color scheme gruvbox
let g:gruvbox_italic=1
colorscheme gruvbox

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden = 1

" Move between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Open terminal and another pane by default
set splitright splitbelow

" Options to have a grid with 3 windows and 1 terminal incorporated.
autocmd VimEnter * sp | terminal
autocmd VimEnter * wincmd k
autocmd VimEnter * vs
autocmd VimEnter * wincmd j
autocmd VimEnter * resize -20

tnoremap <Esc> <C-\><C-n>:


"""""""""""" OTHER OPTIONS 
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

