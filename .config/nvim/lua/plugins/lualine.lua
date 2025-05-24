return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    local mode = {
      "mode",
      fmt = function(str)
        return " " .. str
      end,
    }

    local diff = {
      "diff",
      colored = true,
      symbols = { added = " ", modified = " ", removed = " " },
    }

    local filename = {
      "filename",
      file_status = true,
      path = 0,
    }

    local branch = { "branch", icon = { "", color = { fg = "#A6D4DE" } } }

    local function recording_status()
      local reg = vim.fn.reg_recording()
      if reg == "" then
        return ""
      else
        return "Recording @" .. reg
      end
    end

    lualine.setup({
      icons_enabled = true,
      options = {
        theme = "auto",
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "|", right = "" },
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { branch },
        lualine_c = { diff, filename },
        lualine_x = {
          {
            recording_status,
            color = { fg = "#ff9e64", gui = "bold" },
          },
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "filetype" },
        },
      },
    })
  end,
}
