return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = false,
        styles = {
          keywords = { italic = false },
          sidebars = "transparent",
          floats = "transparent",
        },
        lualine_bold = true,
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "cool",
        transparent = true,
        term_colors = false,
        ending_tildes = false,

        highlights = {
          Pmenu = { bg = "NONE", fg = "#C8CCD4", blend = 10 },
          PmenuSel = { bg = "#3E4452", fg = "NONE", blend = 0 },
          PmenuSbar = { bg = "NONE" },
          PmenuThumb = { bg = "#61AFEF" },
          FloatBorder = { bg = "NONE" },
          NormalFloat = { bg = "NONE" },
        },

        diagnostics = {
          darker = true,
          undercurl = true,
          background = true,
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mactruechiato", -- latte, frappe, macchiato, mocha
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = {
          comments = { "italic" }, -- Change the style of comments
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        custom_highlights = {},
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        compile = true, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        transparent = true,
        terminalColors = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        overrides = function(colors)
          local theme = colors.theme
          return {
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },

            Pmenu = { fg = "none", bg = "none" },
            PmenuSel = { fg = "none", bg = theme.ui.bg_p2 },
            PmenuSbar = { fg = theme.ui.bg_p2, bg = "none" },
            PmenuThumb = { bg = theme.ui.bg_p2 },
            BlinkCmpMenuBorder = { bg = "none" },
          }
        end,
        theme = "wave",
      })

      vim.cmd("colorscheme kanagawa")
    end,
  },
}
