local km = vim.api.nvim_set_keymap

-- Leader
vim.g.mapleader = " "

-- Source
km('n', '<leader><F4>', '<cmd>source ~/.config/nvim/init.vim<CR>', {noremap = true})

-- Indent
km('v', '<', '<gv', {noremap = true})
km('v', '>', '>gv', {noremap = true})

-- Move between panes
km('n', '<C-h>', '<C-w>h', {noremap = true})
km('n', '<C-j>', '<C-w>j', {noremap = true})
km('n', '<C-k>', '<C-w>k', {noremap = true})
km('n', '<C-l>', '<C-w>l', {noremap = true})

-- Resize panes
km('n', '<M-j>', ':resize -2<CR>', {noremap = true})
km('n', '<M-k>', ':resize +2<CR>', {noremap = true})
km('n', '<M-h>', ':vertical resize -2<CR>', {noremap = true})
km('n', '<M-l>', ':vertical resize +2<CR>', {noremap = true})


km('t', '<Esc>', '<C-\\><C-n>', {noremap = true})

km('v', '<leader>p', '"_dP', {noremap = true})

-- Telescope
km('n', '<leader>ff', '<cmd>lua require("telescope_custom").find_files()<cr>', {noremap = true})
km('n', '<leader>fF', '<cmd>lua require("telescope_custom").find_files_all()<cr>', {noremap = true})
km('n', '<leader>fg', '<cmd>lua require("telescope_custom").live_grep()<cr>', {noremap = true})
km('n', '<leader>fG', '<cmd>lua require("telescope_custom").live_grep_ignore()<cr>', {noremap = true})
km('n', '<leader>fb', '<cmd>lua require("telescope_custom").buffers()<cr>', {noremap = true})
km('n', '<leader>cfb', '<cmd>lua require("telescope_custom").current_buffer_fuzzy_find()<cr>', {noremap = true})
km('n', '<leader>gs', '<cmd>lua require("telescope_custom").git_status()<cr>', {noremap = true})
km('n', '<leader>gc', '<cmd>lua require("telescope_custom").git_bcommits()<cr>', {noremap = true})
km('n', '<leader>gb', '<cmd>lua require("telescope_custom").git_branches()<cr>', {noremap = true})
km('n', '<leader>dg', '<cmd>lua require("telescope_custom").diagnostics()<cr>', {noremap = true})
km('n', '<leader>rf', '<cmd>lua require("telescope_custom").lsp_references()<cr>', {noremap = true})
km('n', '<leader>hp', '<cmd>lua require("telescope_custom").help_tags()<cr>', {noremap = true})
km('n', '<leader>km', '<cmd>lua require("telescope_custom").keymaps()<cr>', {noremap = true})
km('n', '<leader>e', '<cmd>Telescope file_browser<cr>', {noremap = true})

-- LSP
 -- km('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap=true, silent=true})
  km('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap=true, silent=true})
  km('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap=true, silent=true})
  km('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap=true, silent=true})
 -- km('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {noremap=true, silent=true})
 -- km('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', {noremap=true, silent=true})
 -- km('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', {noremap=true, silent=true})
 -- km('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', {noremap=true, silent=true})
  km('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', {noremap=true, silent=true})
  km('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap=true, silent=true})
  km('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap=true, silent=true})
  -- km('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap=true, silent=true})
 -- km('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', {noremap=true, silent=true})
 km('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap=true, silent=true})
 km('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {noremap=true, silent=true})
 -- km('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', {noremap=true, silent=true})
 -- km('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', {noremap=true, silent=true})


-- Split Screen into 4
km('n', '<C-z>', ':vs \\| :vs \\| :wincmd h \\| :vs<CR>', {noremap = true})
km(
	'n',
	'<leader><F6>', 
	':vs | :vs | :vs | :sp | :wincmd h | :sp | :wincmd h | :sp | :wincmd h | :sp<CR>',
	{noremap = true}
)



-- Split screen into 4.
-- nnoremap <C-z> :vs \| :vs \| :wincmd h \| :vs<CR>
-- nnoremap <C-z> :vs \| :vs \| :wincmd h \| :vs<CR>
--
-- augroup Navigation
-- 	autocmd VimEnter * vs
-- 	autocmd VimEnter * vs
-- 	autocmd VimEnter * wincmd h
-- augroup END
