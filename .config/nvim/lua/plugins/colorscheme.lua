return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "storm",
      transparent = true,
      styles = {
        functions = { italic = false, bold = true },
        keywords = { italic = false, bold = true },
        sidebars = "transparent",
        floats = "transparent",
      },
    })
    vim.cmd.colorscheme("tokyonight")
  end,
}
