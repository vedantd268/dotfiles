return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "BufReadPre",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "sql",
        "json",
        "jsonc",
        "markdown",
        "javascript",
        "typescript",
        "html",
        "css",
        "zig",
        "java",
        "toml",
        "yaml",
        "c",
        "go",
        "python",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
