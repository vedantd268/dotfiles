return {
  {
    "mason-org/mason.nvim",
    Lazy = false,
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    event = "VeryLazy",
    config = function()
      require("mason-lspconfig").setup({
        automatic_enable = {
          exclude = { "jdtls" },
        },
      })
    end,
  },
}
