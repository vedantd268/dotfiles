return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = false },
    explorer = {
      enabled = true,
      layout = {
        cycle = false,
      },
    },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 700,
      top_down = false,
    },
    picker = {
      enabled = true,
      formatters = {
        file = {
          filename_first = true,
          icon_width = 2,
        },
      },
      layout = {
        preset = "telescope",
        cycle = false,
      },
      exclude = {
        "node_modules/",
        "dist/",
        ".next/",
        ".vite/",
        ".git/",
        ".gitlab/",
        "build/",
        "target/",
        "dadbod_ui/tmp/",
        "dadbod_ui/dev/",
        "package-lock.json",
        "pnpm-lock.yaml",
        "yarn.lock",
      },
    },
    quickfile = { enabled = false },
    scope = { enabled = false },
    scroll = { enabled = false },
    words = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = false },
      },
    },
    dashboard = {
      preset = {
        -- keys = {
        --   {
        --     icon = " ",
        --     key = "f",
        --     desc = "Find File",
        --     action = function()
        --       Snacks.picker.files()
        --     end,
        --   },
        --   { icon = " ", key = "n", desc = "New File", action = ":ene" },
        --   {
        --     icon = " ",
        --     key = "g",
        --     desc = "Find Text",
        --     action = function()
        --       Snacks.picker.grep({ layout = "telescope" })
        --     end,
        --   },
        --   {
        --     icon = " ",
        --     key = "r",
        --     desc = "Recent Files",
        --     action = function()
        --       Snacks.picker.recent()
        --     end,
        --   },
        --   {
        --     icon = " ",
        --     key = "c",
        --     desc = "Config",
        --     action = function()
        --       Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
        --     end,
        --   },
        --   { icon = " ", key = "s", desc = "Restore Session", section = "session" },
        --   { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
        --   { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        -- },
      },
    },
  },
  keys = {
    {
      "<leader>,",
      function()
        Snacks.picker.buffers({ layout = "select" })
      end,
    },
    {
      "<leader>g",
      function()
        Snacks.picker.grep({ layout = "telescope" })
      end,
    },
    {
      "<leader>:",
      function()
        Snacks.picker.command_history({ layout = "select" })
      end,
    },
    {
      "<leader>n",
      function()
        Snacks.picker.notifications()
      end,
    },
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
    },
    {
      "<leader>pc",
      function()
        Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
      end,
    },
    {
      "<leader>pf",
      function()
        Snacks.picker.files()
      end,
    },
    {
      "<leader>pg",
      function()
        Snacks.picker.git_files()
      end,
    },
    {
      "<leader>pp",
      function()
        Snacks.picker.projects({ layout = "select" })
      end,
    },
    {
      "<leader>pr",
      function()
        Snacks.picker.recent()
      end,
    },
    {
      "<leader>gb",
      function()
        Snacks.picker.lines()
      end,
    },
    {
      "<leader>gw",
      function()
        Snacks.picker.grep_word({ layout = "telescope" })
      end,
      mode = { "n", "x" },
    },
    {
      "<leader>sd",
      function()
        Snacks.picker.diagnostics()
      end,
    },
    {
      "<leader>sh",
      function()
        Snacks.picker.help({ layout = "telescope" })
      end,
    },
    {
      "<leader>sm",
      function()
        Snacks.picker.marks({ layout = "telescope" })
      end,
    },
    {
      "gd",
      function()
        Snacks.picker.lsp_definitions()
      end,
    },
    {
      "gr",
      function()
        Snacks.picker.lsp_references({ layout = "telescope" })
      end,
      nowait = true,
    },
    {
      "gI",
      function()
        Snacks.picker.lsp_implementations()
      end,
    },
    {
      "<leader>th",
      function()
        Snacks.picker.colorschemes()
      end,
    },
  },
}
