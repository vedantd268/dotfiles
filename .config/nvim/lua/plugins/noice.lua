return {
  "folke/noice.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  event = "VeryLazy",
  opts = {
    presets = {
      bottom_search = false,
      command_palette = false,
      long_message_to_split = true,
      inc_rename = true,
      lsp_doc_border = true,
    },
    lsp = {
      signature = {
        auto_open = {
          enabled = false,
        },
      },
    },
  },
}
