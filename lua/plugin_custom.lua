local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- -- Have packer use a popup window
-- packer.init({
-- 	display = {
-- 		open_fn = function()
-- 			return require("packer.util").float({ border = "rounded" })
-- 		end,
-- 	},
-- })

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use({ "wbthomason/packer.nvim"}) -- Have packer manage itself
	
	--Status bar
	use({"vim-airline/vim-airline"})
	use({"vim-airline/vim-airline-themes"})

	-- Indent
	-- use({'lukas-reineke/indent-blankline.nvim'})

	-- Telescope
	use {
		  'nvim-telescope/telescope.nvim',
		-- or                            , branch = '0.1.x',
		  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use { "nvim-telescope/telescope-file-browser.nvim" }

	-- Treesitter
	use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

	-- Colorscheme
	use 'folke/tokyonight.nvim'

	-- Language support
	use({'neovim/nvim-lspconfig'})

	-- Completion
	use({'hrsh7th/cmp-nvim-lsp'})
	use({'hrsh7th/cmp-buffer'})
	use({'hrsh7th/cmp-path'})
	use({'hrsh7th/cmp-cmdline'})
	use({'hrsh7th/nvim-cmp'})

	-- Toggleterm
	use({"akinsho/toggleterm.nvim"})

	use({"jiangmiao/auto-pairs"})

	-- Transparent
	-- use({"xiyaowong/nvim-transparent"})

	-- Comment
	use({"numToStr/Comment.nvim"})

	--Copilot
	use({"github/copilot.vim"})

	-- Snippets
	use({"L3MON4D3/LuaSnip"})
	
	-- Icons
	use({"kyazdani42/nvim-web-devicons"})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
