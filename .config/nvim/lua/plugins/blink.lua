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
      ghost_text = { enabled = true },
      menu = {
        auto_show = true,
        border = "single",
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
