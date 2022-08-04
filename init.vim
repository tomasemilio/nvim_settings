"""""""""""""""""""""""BASIC OPTIONS""""""""""""""""""""""""""""
filetype off
syntax enable
set colorcolumn=80
let g:python_recommended_style=0 "Use PEP8 style
lua require('options_custom')

"Packer
lua require('plugin_custom')

""""""""""""""""""""""COLORSCHEME""""""""""""""""""""""""""""
colorscheme material
let g:material_style = "darker"

"""""""""""""""""""""""KEYMAPS""""""""""""""""""""""""""""
lua require('keymaps_custom')

"""""""""""""""""""""""COMMENT""""""""""""""""""""""""""""
lua require('Comment').setup()

"""""""""""""""""""""""TRANSPARANCY""""""""""""""""""""""""""""
" let g:transparent_enabled = v:true

"""""""""""""""""""""""TREESITTER ENABLE ALL""""""""""""""""""""""""""""
lua require('treesitter_custom')

""""""""""""""""""""""""TELESCOPE"""""""""""""""""""""""""""
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

""""""""""""MANUAL FIXES AT THE END """"""""""
augroup Navigation
	autocmd VimEnter * source ~/.config/nvim/init.vim
	" autocmd VimEnter * highlight WinSeparator guibg=None
augroup END
