return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        component_separators = "|",
        section_separators = "",

        sections = {
          lualine_a = { "mode" }, -- Typically mode goes in lualine_a
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { "filename" }, -- Placed filename here
          lualine_x = {
            {
              function()
                return require("noice").api.statusline.mode.get()
              end,
              cond = function()
                return require("noice").api.statusline.mode.has()
              end,
              color = { fg = "#ff9e64" },
            },
            {
              function()
                return require("noice").api.status.command.get()
              end,
              cond = function()
                return require("noice").api.status.command.has()
              end,
              color = { fg = "#ff9e64" },
            },
          },
          lualine_y = { "encoding", "fileformat", "filetype" },
          lualine_z = { "location" },
        },
      },
    })
  end,
}
