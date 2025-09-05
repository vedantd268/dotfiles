return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      compile = true,
      undercurl = true,
      transparent = true,
      terminalColors = true,
      keywordStyle = { italic = false },
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
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          CursorLine = { bg = "none" },
          Pmenu = { bg = "none", fg = "none" },
          PmenuSel = { bg = palette.waveBlue1, fg = "none" },
          PmenuThumb = { bg = palette.autumnRed },
          BlinkCmpMenuBorder = { bg = "none" },
          NoiceCmdline = { bg = "none" },
          MsgArea = { bg = "none" },
          NoiceCmdlineIcon = { fg = palette.crystalBlue },
          WinSeparator = { fg = palette.waveBlue1 },
        }
      end,
    })
    vim.cmd("colorscheme kanagawa-wave")
  end,
}
