return {
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
}
