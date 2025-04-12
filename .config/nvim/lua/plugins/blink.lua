return {
  "saghen/blink.cmp",
  event = "LspAttach",
  dependencies = "rafamadriz/friendly-snippets",
  version = "*",
  opts = {
    keymap = {
      preset = "default",
    },
    snippets = {
      preset = "default",
    },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "normal",
    },

    completion = {
      menu = {
        border = "rounded",
      },
      documentation = {
        window = {
          border = "rounded",
        },
      },
    },
  },

  signature = {
    window = {
      border = "rounded",
    },
  },
}
