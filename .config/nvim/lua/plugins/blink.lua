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
        border = "single",
      },

      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,
        window = { border = "single" },
      },
    },

    signature = {
      enabled = true,
      window = {
        border = "single",
        show_documentation = false,
      },
    },
  },
}
