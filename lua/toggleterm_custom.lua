require("toggleterm").setup{
	direction = "float",
	open_mapping = [[<c-\>]],
	on_open = function(normal) -- function to run when the terminal opens
		vim.cmd(":wa")
	end,
	-- on_close = fun(t: Terminal), -- function to run when the terminal closes
	hide_numbers = false, -- hide the number column in toggleterm buffers
	-- shade_filetypes = {},
	-- shade_terminals = true,
	-- shading_factor = 3,
}

