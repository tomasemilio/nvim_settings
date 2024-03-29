-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
	defaults = {
		layout_strategy = 'vertical',
	},
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
	file_browser = {
		  -- theme = "dropdown",
		  -- disables netrw and use telescope-file-browser in its place
		  hijack_netrw = true,
		  mappings = {
			["i"] = {
			  -- your custom insert mode mappings
			},
			["n"] = {
			  -- your custom normal mode mappings
			},
		  },
		},
  },
  file_ignore_patterns = {'env/', '__pycache__/'},
  layout_strategy = 'vertical',

}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

require("telescope").load_extension "file_browser"

local mappings = {}

mappings.find_files = function()
	require('telescope.builtin').find_files({
		no_ignore = true,
		hidden = false,
		file_ignore_patterns = {'env/', '__pycache__/'}
	})
end

mappings.find_files_all = function()
	require('telescope.builtin').find_files({
		no_ignore = true,
		hidden = true,
	})
end

mappings.live_grep = function()
	require('telescope.builtin').live_grep()
end

mappings.live_grep_ignore = function()
	require('telescope.builtin').live_grep({
	ignore_patterns = {'env/', '__pycache__/'}
	})
end

mappings.buffers = function()
	require('telescope.builtin').buffers()
end

mappings.current_buffer_fuzzy_find = function()
	require('telescope.builtin').current_buffer_fuzzy_find()
end

mappings.git_status = function()
	require('telescope.builtin').git_status()
end

mappings.git_branches = function()
	require('telescope.builtin').git_branches()
end

mappings.git_bcommits = function()
	require('telescope.builtin').git_bcommits()
end

mappings.git_commits = function()
	require('telescope.builtin').git_commits()
end

mappings.diagnostics = function()
	require('telescope.builtin').diagnostics()
end

mappings.lsp_references = function()
	require('telescope.builtin').lsp_references()
end

mappings.help_tags = function()
	require('telescope.builtin').help_tags()
end

mappings.keymaps = function()
	require('telescope.builtin').keymaps()
end


return mappings
