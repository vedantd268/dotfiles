return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "biome" },
        typescript = { "biome" },
        javascriptreact = { "biome" },
        typescriptrect = { "biome" },
        vue = { "prettier" },
        json = { "biome" },
        jsonc = { "biome" },
        graphql = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        sql = { "sql_formatter" },
        cpp = { "clang_format" },
        java = { "google_java_format" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })
  end,
}
