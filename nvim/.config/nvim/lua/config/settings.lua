local opt = vim.opt

opt.number = true
-- opt.relativenumber = true
opt.mouse = 'a'
opt.showmode = true

vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)

opt.cmdheight = 0

-- Enable break indent
opt.breakindent = true
opt.wrap = false

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
-- ui
opt.cursorline = true -- highlight the current line
opt.laststatus = 2 -- only the last window will always have a status line
opt.lazyredraw = true -- don"t update the display while executing macros
opt.list = true
opt.listchars = {
  tab = '┊ ',
  trail = '·',
  extends = '»',
  precedes = '«',
  nbsp = '×',
}

-- Preview substitutions live, as you type!
opt.inccommand = 'split'

-- Show which line your cursor is on
opt.cursorline = true

opt.scrolloff = 16 -- minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 3 -- minimal number of screen columns to keep to the left and right (horizontal) of the cursor if wrap is `false`

-- backups
opt.backup = false -- create a backup file
opt.swapfile = false -- creates a swapfile
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

-- perfomance
-- remember N lines in history
opt.history = 100 -- keep 100 lines of history
opt.redrawtime = 1500
opt.timeoutlen = 250 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.ttimeoutlen = 10
opt.updatetime = 100 -- signify default updatetime 4000ms is not good for async update

-- theme
opt.termguicolors = true -- enable 24-bit RGB colors
