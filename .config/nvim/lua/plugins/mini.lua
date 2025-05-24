return {
  "echasnovski/mini.nvim",
  version = "*",
  event = "InsertEnter",
  config = function()
    require("mini.files").setup({
      mappings = {
        close = "q",
        go_in = "l",
        go_out = "h",
        reset = ",",
        synchronize = "s",
      },
    })
    require("mini.surround").setup({
      mappings = {
        add = "usa",
        delete = "usd",
        replace = "usr",
        highlight = "ush",
      },
    })
    require("mini.pairs").setup({})
  end,
}
