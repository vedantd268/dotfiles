return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      compile = true,
      undercurl = true,
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
        local palette = colors.palette
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none", fg = palette.crystalBlue },
          FloatTitle = { bg = "none", fg = palette.peachRed },
          CursorLine = { bg = "none" },

          Pmenu = { bg = "none", fg = "none" },
          PmenuSel = { bg = palette.waveBlue1, fg = "none" },
          PmenuThumb = { bg = palette.autumnRed },

          BlinkCmpMenuBorder = { bg = "none", fg = palette.crystalBlue },

          NoiceCmdlineIcon = { fg = palette.crystalBlue },

          SnacksPickerPrompt = { bg = "none", fg = palette.surimiOrange },

          MiniFilesTitle = { bg = "none" },
          MiniFilesTitleFocused = { bg = "none", fg = palette.surimiOrange },
        }
      end,
      theme = "wave",
    })
    vim.cmd("colorscheme kanagawa")
  end,
}
