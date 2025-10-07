return {
  "kylechui/nvim-surround",
  version = "^3.0.0",
  event = "InsertEnter",
  config = function()
    require("nvim-surround").setup({})
  end,
}
