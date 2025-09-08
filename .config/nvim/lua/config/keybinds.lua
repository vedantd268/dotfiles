vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap("n", "<leader>w", ":w<CR>")
keymap("n", "<leader>q", ":wq<CR>")
keymap("n", "<leader>a", "gg<S-v>G<CR>")

keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

keymap("n", "x", '"_x', opts)

keymap("x", "<leader>p", [["_dp]])

keymap("n", "dd", '"_dd', opts)

keymap("n", "dw", '"_dw', opts)

keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "J", "mzJ`z")

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap("n", "<leader>ss", "<C-w>s", opts) -- split window horizontally
keymap("n", "<leader>ks", ":close<CR>", opts) -- close current split window

keymap("n", "<C-k>", ":resize -2<CR>", opts)
keymap("n", "<C-j>", ":resize +2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize -2<CR>", opts)

keymap("n", "sk", ":wincmd k<CR>", opts)
keymap("n", "sj", ":wincmd j<CR>", opts)
keymap("n", "sh", ":wincmd h<CR>", opts)
keymap("n", "sl", ":wincmd l<CR>", opts)

keymap("n", "<leader>x", ":bdelete!<CR>", opts) -- close buffer
keymap("n", "<leader>b", ":enew<CR>", opts) -- new buffer

keymap("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, opts)

keymap("n", "]d", function()
  vim.diagnostic.goto_next()
end, opts)

keymap("n", "[d", function()
  vim.diagnostic.goto_prev()
end, opts)

keymap("n", "<leader>db", ":DBUIToggle<CR>", opts)

keymap("n", "]t", function()
  require("todo-comments").jump_next()
end)

keymap("n", "[t", function()
  require("todo-comments").jump_prev()
end)

keymap("n", "<leader>-", ":Oil<CR>")
