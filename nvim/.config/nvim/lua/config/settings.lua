vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = true

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.cmdheight = 0

-- Enable break indent
vim.opt.breakindent = true
vim.opt.wrap = false

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
-- ui
vim.opt.cursorline = true -- highlight the current line
vim.opt.laststatus = 2 -- only the last window will always have a status line
vim.opt.lazyredraw = true -- don"t update the display while executing macros
vim.opt.list = true
vim.opt.listchars = {
  tab = '┊ ',
  trail = '·',
  extends = '»',
  precedes = '«',
  nbsp = '×',
}

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
-- vim.opt.cursorline = true

vim.opt.scrolloff = 3 -- minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 3 -- minimal number of screen columns to keep to the left and right (horizontal) of the cursor if wrap is `false`

-- backups
vim.opt.backup = false -- create a backup file
vim.opt.swapfile = false -- creates a swapfile
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

-- perfomance
-- remember N lines in history
vim.opt.history = 100 -- keep 100 lines of history
vim.opt.redrawtime = 1500
vim.opt.timeoutlen = 250 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.ttimeoutlen = 10
vim.opt.updatetime = 100 -- signify default updatetime 4000ms is not good for async update

-- theme
vim.opt.termguicolors = true -- enable 24-bit RGB colors
