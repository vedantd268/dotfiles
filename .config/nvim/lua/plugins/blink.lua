return {
  "saghen/blink.cmp",
  event = "VeryLazy",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",
  opts = {
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    appearance = {
      nerd_font_variant = "normal",
    },
    completion = {
      keyword = { range = "prefix" },
      list = {
        selection = {
          auto_insert = false,
        },
      },
      menu = {
        auto_show = true,
        border = "rounded",
        draw = {
          columns = {
            { "label" },
            { "kind" },
          },
        },
      },
      documentation = {
        auto_show = false,
        window = {
          border = "rounded",
        },
      },
    },
    signature = {
      enabled = false,
      window = {
        border = "rounded",
      },
    },
  },
}
