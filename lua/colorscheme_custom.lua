-- Example config in Lua
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { 'terminal' }
vim.g.tokyonight_transparent = true
vim.g.tokyonight_terminal_colors = false
vim.g.tokyonight_dark_sidebar = false
vim.g.tokyonight_dark_float = false

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = {
	-- hint = "orange",
	-- error = "#ff0000",
	bg_float = "none",
	bg_sidebar = "none"
}

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
