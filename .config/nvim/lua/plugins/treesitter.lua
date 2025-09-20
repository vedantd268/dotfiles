return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  branch = "master",
  lazy = false,
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
        "bash",
        "json",
        "jsonc",
        "markdown",
        "gitignore",
        "gitattributes",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "java",
        "groovy",
        "properties",
        "xml",
        "toml",
        "yaml",
        "tmux",
        "hyprlang",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,

          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = { query = "@class.inner" },
            ["as"] = { query = "@local.scope", query_group = "locals" },
          },
          selection_modes = {
            ["@parameter.outer"] = "v", -- charwise
            ["@function.outer"] = "V", -- linewise
            ["@class.outer"] = "<c-v>", -- blockwise
          },
          include_surrounding_whitespace = false,
        },
      },
    })
  end,
}
