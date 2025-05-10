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
          "emmet_language_server",
          "html",
          "cssls",
          "tailwindcss",
          "sqls",
          "ts_ls",
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
        html = {},
        cssls = {},
        tailwindcss = {},
        sqls = {},
        emmet_language_server = {},
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
