return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    input = { enabled = true },
    image = { convert = { notify = false } },
    notifier = {
      timeout = 1000,
    },
    picker = {
      layout = {
        preset = "my_picker",
        cycle = false,
      },
      layouts = {
        my_picker = {
          reverse = true,
          layout = {
            box = "horizontal",
            backdrop = false,
            width = 0.6,
            height = 0.7,
            {
              box = "vertical",
              { win = "list", title = " Results ", title_pos = "center", border = "single" },
              {
                win = "input",
                height = 1,
                border = "single",
                title = "{title} {live} {flags}",
                title_pos = "center",
              },
            },
          },
        },
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
        "pnpm-lock.yaml",
      },
    },
    words = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = false },
      },
    },
    dashboard = {
      preset = {
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick()" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.picker.grep({layout='telescope'})" },
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
      "<leader>fb",
      function()
        Snacks.picker.buffers()
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
        Snacks.picker.command_history({ layout = "my_picker" })
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
      "<leader>f",
      function()
        Snacks.picker.files({ layout = "my_picker" })
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
        Snacks.picker.projects()
      end,
    },
    {
      "<leader>fr",
      function()
        Snacks.picker.recent()
      end,
    },
    {
      "<leader>gl",
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
      "<leader>fd",
      function()
        Snacks.picker.diagnostics()
      end,
    },
    {
      "<leader>fh",
      function()
        Snacks.picker.help()
      end,
    },
    {
      "<leader>fm",
      function()
        Snacks.picker.marks()
      end,
    },
    -- {
    --   "gd",
    --   function()
    --     Snacks.picker.lsp_definitions()
    --   end,
    -- },
    -- {
    --   "gD",
    --   function()
    --     Snacks.picker.lsp_declaration()
    --   end,
    -- },
    -- {
    --   "gr",
    --   function()
    --     Snacks.picker.lsp_references()
    --   end,
    --   nowait = true,
    -- },
    -- {
    --   "gi",
    --   function()
    --     Snacks.picker.lsp_implementations()
    --   end,
    -- },
  },
}
