return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptrect = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        yaml = { "yamlfmt" },
        graphql = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        vue = { "prettier" },
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
