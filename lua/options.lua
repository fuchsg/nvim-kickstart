--
-- NOTE: Setting options
-- See `:help vim.opt`
-- For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Backup, swap and undo files
vim.opt.swapfile = true
vim.opt.backup = true
vim.opt.backupdir = os.getenv 'HOME' .. '/.local/nvim/backup'
vim.opt.undofile = true
vim.opt.undodir = os.getenv 'HOME' .. '/.local/nvim/undo'

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
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Set max text width (use 'gq' to enforce, 'gqG' to enforce until end of file)
vim.opt.textwidth = 80
vim.opt.colorcolumn = '80'

-- Only yanked text goes to clipboard
-- Deleted text does not go to the clipboard
vim.opt.clipboard = ''
vim.keymap.set({ 'n', 'x' }, 'y', '"+y')
vim.keymap.set('n', 'p', '""p')

-- Disable auto-indent on comment insertion
vim.opt.indentkeys:remove '0#'
