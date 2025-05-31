return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    explorer = {
      enabled = true,
      layout = {
        cycle = false,
      },
    },
    indent = { enabled = false },
    input = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 700,
      top_down = false,
    },
    picker = {
      enabled = true,
      prompt = "   ",
      formatters = {
        file = {
          filename_first = true,
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
    words = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = false },
      },
    },
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        header = [[
                                                                     
       ████ ██████           █████      ██                     
      ███████████             █████                             
      █████████ ███████████████████ ███   ███████████   
     █████████  ███    █████████████ █████ ██████████████   
    █████████ ██████████ █████████ █████ █████ ████ █████   
  ███████████ ███    ███ █████████ █████ █████ ████ █████  
 ██████  █████████████████████ ████ █████ █████ ████ ██████ 
        ]],
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
        Snacks.picker.grep()
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
      "<leader>fc",
      function()
        Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
      end,
    },
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
    },
    {
      "<leader>fg",
      function()
        Snacks.picker.git_files()
      end,
    },
    {
      "<leader>fp",
      function()
        Snacks.picker.projects({ layout = "select" })
      end,
    },
    {
      "<leader>fr",
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
        Snacks.picker.grep_word()
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
        Snacks.picker.help()
      end,
    },
    {
      "<leader>sm",
      function()
        Snacks.picker.marks()
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
        Snacks.picker.lsp_references()
      end,
      nowait = true,
    },
    {
      "gi",
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
