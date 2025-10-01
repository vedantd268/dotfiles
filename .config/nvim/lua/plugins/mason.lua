return {
  {
    "neovim/nvim-lspconfig",
  },
  {
    "mfussenegger/nvim-jdtls",
  },
  {
    "mason-org/mason.nvim",
    event = "VeryLazy",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    event = "VeryLazy",
    opts = {
      automatic_enable = {
        exclude = {
          "jdtls",
        },
      },
    },
  },
}
