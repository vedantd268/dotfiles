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
        jsx = { "prettier" },
        tsx = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        graphql = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        sql = { "sql_formatter" },
        java = { "clang_format" },
      },
    })
  end,
}
