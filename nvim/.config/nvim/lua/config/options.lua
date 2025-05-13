-- General Settings
vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.wrap = false

-- Tabs and Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Mouse Support
vim.opt.mouse = "a"

-- Split Management
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 0

-- Backups
vim.opt.backup = false -- create a backup file
vim.opt.swapfile = false -- creates a swapfile
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.undofile = true -- enable persistent undo

-- Perfomance
vim.opt.history = 100 -- keep 100 lines of history
vim.opt.redrawtime = 1500
vim.opt.timeoutlen = 250 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.ttimeoutlen = 10
vim.opt.updatetime = 100 -- signify default updatetime 4000ms is not good for async update
vim.opt.smoothscroll = true
