vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.background = "dark"
vim.opt.backup = false
vim.opt.clipboard = "" -- TODO: sätta allt själv eller använda unnamed?
vim.opt.cmdheight = 1
-- https://github.com/epwalsh/obsidian.nvim?tab=readme-ov-file#concealing-characters
vim.opt.conceallevel = 2 -- används av neorg och markdown
vim.opt.cursorline = true
vim.opt.equalalways = true
vim.opt.fileencoding = "utf-8"
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.showtabline = 0
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.writebackup = false

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true
vim.opt.relativenumber = true

-- save undo history
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.updatetime = 250 -- (4000ms default)
vim.opt.timeoutlen = 300

--  :help 'list'
--  :help 'listchars'
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.scrolloff = 10

vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
