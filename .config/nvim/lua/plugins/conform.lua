return {
  "stevearc/conform.nvim",
  event = {
    "BufReadPre",
    "BufNewFile",
  },

  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        -- javascirptreact = { "prettier" },
        -- typescriptreact = { "prettier" },
        jsx = { "prettier" },
        tsx = { "prettier" },
        json = { "prettier" },
        graphql = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        sql = { "sql_formatter" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        java = { "clang_format" },
      },
    })
  end,
}
