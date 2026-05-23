return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    TS = require("nvim-treesitter")
    TS.setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
    })
    TS.install({ "rust", "javascript", "zig", "python", "java", "bash", "sql", "json", "html", "css", "markdown" })
  end,
}
