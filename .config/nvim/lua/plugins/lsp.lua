return {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "cssls",
          "tailwindcss",
          "sqlls",
          "ts_ls",
          "clangd",
          "jdtls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = "saghen/blink.cmp",
    event = "InsertEnter",
    opts = {
      servers = {
        lua_ls = {},
        ts_ls = {},
        cssls = {},
        tailwindcss = {},
        sqlls = {},
        emmet_language_server = {},
        clangd = {},
        jdtls = {},
      },
    },
    config = function(_, opts)
      local lspconfig = require("lspconfig")
      for server, config in pairs(opts.servers) do
        config.capabilities = require("blink.cmp").get_lsp_capabilities()
        lspconfig[server].setup(config)
      end
    end,
  },
}
