return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    cmdline = {
      enabled = true,
      view = "cmdline",
    },
    presets = {
      bottom_search = true,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = true,
    },
    lsp = {
      signature = {
        enabled = false,
      },
    },
  },
}
