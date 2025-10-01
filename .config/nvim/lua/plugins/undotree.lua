return {
  "mbbill/undotree",
  event = { "BufReadPre", "BufReadPost" },
  config = function()
    vim.g.undotree_WindowLayout = 4
    vim.g.undotree_ShortIndicators = 1
    vim.g.undotree_DiffAutoOpen = 0
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
}
