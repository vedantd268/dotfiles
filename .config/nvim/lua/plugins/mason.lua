return {
  { "mfussenegger/nvim-jdtls" },
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
}
