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
        json = { "biome" },
        jsonc = { "biome" },
        graphql = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        vue = { "prettier" },
        sql = { "sql_formatter" },
        c = { "clang-format" },
        cpp = { "clang-format" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })
  end,
}
