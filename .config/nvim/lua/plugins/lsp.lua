return {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim", "Snacks" },
              },
            },
          },
        },
        html = {},
        cssls = {},
        emmet_language_server = {
          filetypes = { "html", "css", "javascriptreact", "typescriptreact" },
        },
        ts_ls = {},
        tailwindcss = {},
        sqls = {},
        jdtls = {},
      },
    },
    config = function(_, opts)
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "cssls",
          "tailwindcss",
          "emmet_language_server",
          "sqls",
          "jdtls",
        },
      })

      for server, config in pairs(opts.servers) do
        vim.lsp.config(server, config)
        vim.lsp.enable(server)
      end
    end,
  },
}
