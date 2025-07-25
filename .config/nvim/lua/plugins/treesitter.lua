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
        "sql",
        "json",
        "jsonc",
        "markdown",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "zig",
        "java",
        "toml",
        "yaml",
        "tmux",
        "c",
        "cpp",
        "go",
        "python",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
