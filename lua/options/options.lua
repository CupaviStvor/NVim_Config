vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.o.scrolloff = 999
vim.o.mouse = ""

-- Undotree config options

vim.opt.undofile = true -- Enable persistent undo
vim.opt.undodir = vim.fn.expand('~/.config/nvim/undodir') -- Directory to store undo files
vim.opt.undolevels = 500 -- Max undo steps saved

vim.notify = require("notify")
vim.cmd("colorscheme tokyonight-night")

vim.g.mkdp_browser = 'zen'  -- Set your preferred browser
vim.g.mkdp_auto_start = 0       -- Don't auto-start preview
vim.g.mkdp_auto_close = 1       -- Auto-close preview when switching buffers
vim.g.mkdp_refresh_slow = 0     -- Disable slow refresh
