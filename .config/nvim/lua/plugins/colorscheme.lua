return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "storm",
      transparent = true,
      styles = {
        functions = { italic = true, bold = true },
        keywords = { italic = false, bold = true },
        sidebars = "transparent",
        floats = "transparent",
      },
    })
    vim.cmd.colorscheme("tokyonight")
  end,
  --
  -- "sainnhe/sonokai",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   vim.g.sonokai_enable_italic = true
  --   vim.g.sonokai_transparent_background = true
  --   vim.g.sonokai_style = "shusia"
  --   vim.cmd.colorscheme("sonokai")
  -- end,
  --
  -- "catppuccin/nvim",
  -- name = "catppuccin",
  -- priority = 1000,
  -- config = function()
  --   require("catppuccin").setup({
  --     flavour = "mocha", -- latte, frappe, macchiato, mocha
  --     transparent_background = true, -- disables setting the background color.
  --     show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
  --     term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  --     dim_inactive = {
  --       enabled = false, -- dims the background color of inactive window
  --       shade = "dark",
  --       percentage = 0.15, -- percentage of the shade to apply to the inactive window
  --     },
  --     no_italic = false, -- Force no italic
  --     no_bold = false, -- Force no bold
  --     no_underline = false, -- Force no underline
  --     styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
  --       comments = { "italic" }, -- Change the style of comments
  --       conditionals = { "italic" },
  --       functions = {},
  --       keywords = {},
  --       variables = {},
  --     },
  --     default_integrations = true,
  --     integrations = {
  --       cmp = true,
  --       gitsigns = true,
  --       nvimtree = true,
  --       treesitter = true,
  --       notify = false,
  --       mini = {
  --         enabled = true,
  --         indentscope_color = "",
  --       },
  --       -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  --     },
  --   })
  --
  --   vim.cmd.colorscheme("catppuccin")
  -- end,
}
