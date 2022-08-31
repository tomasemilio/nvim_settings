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
km('n', '<leader>gb', '<cmd>lua require("telescope_custom").git_branches()<cr>', {noremap = true})
km('n', '<leader>dg', '<cmd>lua require("telescope_custom").diagnostics()<cr>', {noremap = true})
km('n', '<leader>rf', '<cmd>lua require("telescope_custom").lsp_references()<cr>', {noremap = true})
km('n', '<leader>hp', '<cmd>lua require("telescope_custom").help_tags()<cr>', {noremap = true})
km('n', '<leader>km', '<cmd>lua require("telescope_custom").keymaps()<cr>', {noremap = true})


-- Split Screen into 4
km('n', '<C-z>', ':vs \\| :vs \\| :wincmd h \\| :vs<CR>', {noremap = true})



-- Split screen into 4.
-- nnoremap <C-z> :vs \| :vs \| :wincmd h \| :vs<CR>
-- nnoremap <C-z> :vs \| :vs \| :wincmd h \| :vs<CR>
--
-- augroup Navigation
-- 	autocmd VimEnter * vs
-- 	autocmd VimEnter * vs
-- 	autocmd VimEnter * wincmd h
-- augroup END
