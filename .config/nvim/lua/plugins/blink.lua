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
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = "󰜢",
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
        Reference = "󰈇",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "",
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
            -- { "kind" },
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
