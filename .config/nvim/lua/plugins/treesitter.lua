return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "regex",
        "sql",
        "json",
        "jsonc",
        "markdown",
        "javascript",
        "typescript",
        "python",
        "tsx",
        "html",
        "css",
        "java",
        "toml",
        "yaml",
        "tmux",
        "xml",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
    })
  end,
}
