vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":wq<CR>")

map("n", "<leader>h", ":nohlsearch<CR>", opts)

map("n", "x", '"_x', opts)

map("x", "<leader>p", [["_dp]])

map("n", "dd", '"_dd', opts)

map("n", "dw", '"_dw', opts)

map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

map("n", "J", "mzJ`z")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<leader>sv", "<C-w>v", opts)
map("n", "<leader>ss", "<C-w>s", opts)
map("n", "<leader>ks", ":close<CR>", opts)

map("n", "<C-k>", ":resize -2<CR>", opts)
map("n", "<C-j>", ":resize +2<CR>", opts)
map("n", "<C-h>", ":vertical resize +2<CR>", opts)
map("n", "<C-l>", ":vertical resize -2<CR>", opts)

map("n", "sk", ":wincmd k<CR>", opts)
map("n", "sj", ":wincmd j<CR>", opts)
map("n", "sh", ":wincmd h<CR>", opts)
map("n", "sl", ":wincmd l<CR>", opts)

map("n", "<leader>x", ":bdelete!<CR>", opts)
map("n", "<leader>b", ":enew<CR>", opts)

-- map("n", "<leader>ca", function()
--   vim.lsp.buf.code_action()
-- end, opts)

map("n", "K", function()
  vim.lsp.buf.hover({ border = "rounded" })
end, opts)

map("n", "<leader>-", ":Oil --float<CR>")
