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
        java = { "google_java_format" },
      },
      format_on_save = {
        timeout_ms = 250,
        lsp_format = "fallback",
      },
    })
  end,
}
