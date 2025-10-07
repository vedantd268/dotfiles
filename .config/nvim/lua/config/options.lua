local vo = vim.opt

vo.winborder = "rounded"
vo.number = true
vo.relativenumber = true
vo.numberwidth = 4
vo.signcolumn = "yes"
vo.wrap = true
vo.scrolloff = 10
vo.sidescrolloff = 10
vo.expandtab = true
vo.shiftwidth = 4
vo.tabstop = 4
vo.softtabstop = 4
vo.smartindent = true
vo.breakindent = true
vo.backup = false
vo.showcmd = false
vo.showmode = false
vo.showmatch = true
vo.cmdheight = 1
vo.laststatus = 2
vo.backspace = { "start", "eol", "indent" }
vo.clipboard:append("unnamedplus")
vo.fileencoding = "utf-8"
vo.wildignore:append({ "*/node_modules/*" })
vo.mouse = ""
vo.termguicolors = true
vo.splitbelow = true
vo.splitright = true
vo.timeoutlen = 200
vo.undofile = true
vo.autoread = true
vo.updatetime = 50
vo.writebackup = false
vo.cursorline = true
vo.hlsearch = true
vo.incsearch = true
vo.inccommand = "split"
vo.smartcase = true
vo.ignorecase = true

vim.diagnostic.config({
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
  },
})
