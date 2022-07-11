require("onedarkpro").setup({

  theme = 'onedark',

  styles = { -- Choose from "bold,italic,underline"
      strings = "italic", -- Style that is applied to strings.
      comments = "italic", -- Style that is applied to comments
      keywords = "NONE", -- Style that is applied to keywords
      functions = "italic", -- Style that is applied to functions
      variables = "NONE", -- Style that is applied to variables
      virtual_text = "italic", -- Style that is applied to virtual text
  },
  options = {
      bold = false, -- Use the themes opinionated bold styles?
      italic = true, -- Use the themes opinionated italic styles?
      underline = false, -- Use the themes opinionated underline styles?
      undercurl = true, -- Use the themes opinionated undercurl styles?
      cursorline = false, -- Use cursorline highlighting?
      transparency = false, -- Use a transparent background?
      terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
      window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
  }
})
