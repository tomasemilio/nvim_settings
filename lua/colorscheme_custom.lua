-- Example config in Lua
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = {}
vim.g.tokyonight_transparent = true
vim.g.tokyonight_terminal_colors = false
vim.g.tokyonight_dark_float = false
vim.g.tokyonight_dark_sidebar = false

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
