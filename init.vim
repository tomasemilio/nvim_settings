"Packer
lua require('plugin_custom')

""""""""""""""""""""""COLORSCHEME""""""""""""""""""""""""""""
lua require('colorscheme_custom')

"""""""""""""""""""""""KEYMAPS""""""""""""""""""""""""""""
lua require('keymaps_custom')

"""""""""""""""""""""""COMMENT""""""""""""""""""""""""""""
lua require('Comment').setup()

"""""""""""""""""""""""TREESITTER ENABLE ALL""""""""""""""""""""""""""""
lua require('treesitter_custom')

""""""""""""""""""""""""TELESCOPE"""""""""""""""""""""""""""
lua require('telescope_custom')
"
"""""""""""""""""""""""""LSP CONFIG""""""""""""""""""""""""""
lua require('lsp_custom')
"
"""""""""""""""""""""""""Transparency""""""""""""""""""""""""""
lua require('lsp_custom')
"
""""""""""""""""""""""""AUTOCOMPLETE"""""""""""""""""""""""""""""""""
" set completeopt=menu,menuone,noselect
lua require('autocomplete_custom')
"
"""""""""""""""""""""""""""ToggleTerm"""""""""""""""""""""""""""
lua require('toggleterm_custom')

"""""""""""""""""""""""""""LuaSnippet"""""""""""""""""""""""""""
lua require('luasnippet_custom')

"""""""""""""""""""""""""""Lualine"""""""""""""""""""""""""""
lua require('lualine_custom')

""""""""""""""""""""""BASIC OPTIONS""""""""""""""""""""""""""""
lua require('options_custom')
filetype off
syntax enable
set colorcolumn=80
let g:python_recommended_style=0 "Use PEP8 style

""""""""""""MANUAL FIXES AT THE END """"""""""
" augroup Navigation
" 	" autocmd VimEnter * source ~/.config/nvim/init.vim
" 	" autocmd VimEnter * highlight WinSeparator guibg=None
" 	" autocmd VimEnter * vs
" 	" autocmd VimEnter * vs
" 	" autocmd VimEnter * wincmd h
" augroup END
