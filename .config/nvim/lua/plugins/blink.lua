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
      kind_icons = {
        Text = "󰉿",
        Method = "󰊕",
        Function = "󰊕",
        Constructor = "",
        Field = "󰜢",
        Package = "",
        Variable = "󰀫",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰖷",
        Unit = "󰑭",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "󰬛",
      },
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
            { "kind_icon" },
            { "label" },
          },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 250,
      },
    },
    signature = {
      enabled = false,
    },
  },
}
