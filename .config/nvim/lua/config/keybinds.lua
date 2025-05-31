vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Exit inset mode
keymap({ "i", "v" }, "kj", "<ESC>")

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- Remove search highlight
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- delete character without copying into register
keymap("n", "x", '"_x', opts)

-- delete entire line  without copying in register
keymap("n", "dd", '"_dd', opts)

-- delete single world without copying in register
keymap("n", "dw", '"_dw', opts)

-- Vertical scroll and center
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Window management
keymap("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap("n", "<leader>ss", "<C-w>s", opts) -- split window horizontally
keymap("n", "<leader>ks", ":close<CR>", opts) -- close current split window

-- Resize with arrows
keymap("n", "<C-k>", ":resize -2<CR>", opts)
keymap("n", "<C-j>", ":resize +2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize -2<CR>", opts)

-- Navigate between splits
keymap("n", "sk", ":wincmd k<CR>", opts)
keymap("n", "sj", ":wincmd j<CR>", opts)
keymap("n", "sh", ":wincmd h<CR>", opts)
keymap("n", "sl", ":wincmd l<CR>", opts)

-- Buffers
keymap("n", "<leader>x", ":bdelete!<CR>", opts) -- close buffer
keymap("n", "<leader>b", ":enew<CR>", opts) -- new buffer

-- Mini files
keymap("n", "-", ":lua MiniFiles.open()<CR>", opts)

keymap("n", "<leader>fm", function()
  vim.lsp.buf.format()
end, opts)

keymap("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, opts)

keymap("n", "]d", function()
  vim.diagnostic.goto_next()
end, opts)

keymap("n", "[d", function()
  vim.diagnostic.goto_prev()
end, opts)

-- DBui
keymap("n", "<leader>db", ":DBUIToggle<CR>", opts)

-- TODO comments
keymap("n", "]t", function()
  require("todo-comments").jump_next()
end)

keymap("n", "[t", function()
  require("todo-comments").jump_prev()
end)
