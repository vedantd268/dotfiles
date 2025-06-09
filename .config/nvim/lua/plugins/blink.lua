return {
  "saghen/blink.cmp",
  event = "VeryLazy",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",
  opts = {
    sources = {
      per_filetype = {
        sql = { "snippets", "dadbod", "buffer" },
      },

      providers = {
        dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
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
        border = "rounded",
      },

      documentation = {
        auto_show = false,
        window = { border = "rounded" },
      },
    },

    signature = {
      enabled = true,
      window = {
        border = "rounded",
        show_documentation = false,
      },
    },
  },
}
