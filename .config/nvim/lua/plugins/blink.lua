return {
  "saghen/blink.cmp",
  event = "LspAttach",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",
  opts = {
    snippets = {
      preset = "default",
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },

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
      menu = {
        auto_show = true,
        border = "rounded",
        draw = {
          treesitter = { "lsp" },
          columns = {
            { "label", gap = 1 },
            { "kind_icon" },
          },
        },
      },

      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,
        window = { border = "rounded" },
      },
    },

    signature = {
      enabled = false,
      window = {
        border = "rounded",
        show_documentation = false,
      },
    },
  },
}
