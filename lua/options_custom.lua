local options = {
  compatible = false,
  hlsearch = false,
  tabstop = 4,
  softtabstop = 4,
  shiftwidth = 4,
  foldmethod = "indent" ,
  foldlevelstart = 4,
  foldnestmax = 4,
  number = true,
  rnu = true,
  wrap = false,
  swapfile = false,
  backup = false,
  incsearch = true,
  scrolloff = 8,
  termguicolors = true,
  splitright = true, --Pane splitting, also add splitbelow,
  clipboard = "unnamedplus", --Yank to clipboard,
  signcolumn = "yes",
  laststatus = 3,
  pumblend=100,
  winbar="%f"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end





