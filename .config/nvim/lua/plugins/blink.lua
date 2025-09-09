return {
  "saghen/blink.cmp",
  event = "VeryLazy",
  dependencies = { "rafamadriz/friendly-snippets", "moyiz/blink-emoji.nvim" },
  version = "1.*",
  opts = {
    sources = {
      default = { "lsp", "path", "snippets", "buffer", "emoji", "cmdline" },
      per_filetype = {
        sql = { "snippets", "dadbod", "buffer" },
      },
      providers = {
        dadbod = {
          name = "Dadbod",
          module = "vim_dadbod_completion.blink",
        },
        emoji = {
          module = "blink-emoji",
          name = "Emoji",
          score_offset = 15,
        },
      },
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
        draw = {
          columns = {
            { "label" },
            { "kind" },
          },
        },
      },
      documentation = {
        auto_show = false,
      },
    },
    signature = {
      enabled = false,
    },
  },
}
