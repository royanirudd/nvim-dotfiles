-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = false

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Set tab width to 2 spaces
vim.opt.tabstop = 2 -- Number of visual spaces per tab
vim.opt.shiftwidth = 2 -- Number of spaces to use for auto-indentation
vim.opt.expandtab = true -- Convert tabs to spaces

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = "· ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Set browser to firefox based on script written
-- Set netrw to use openlink
vim.g.netrw_browsex_viewer = "openlink"

-- Override vim.ui.open to use openlink directly
vim.ui.open = function(uri)
	local cmd = { "openlink", uri }
	vim.fn.jobstart(cmd, { detach = true })
end
