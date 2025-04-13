return {
  "echasnovski/mini.nvim",
  version = "*",
  event = "VeryLazy",
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
        add = "gsa",
        delete = "gsd",
        replace = "gsr",
        highlight = "gsh",
      },
    })
    require("mini.pairs").setup({})
    require("mini.icons").setup({})
  end,
}
