-- Set leader key to space
vim.g.mapleader = ' '

-- Enable line numbering and relative line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- Indentation settings
vim.opt.tabstop = 4         -- Number of spaces for a tab
vim.opt.softtabstop = 4     -- Number of spaces for a tab when editing
vim.opt.shiftwidth = 4      -- Number of spaces for each step of autoindent
vim.opt.expandtab = true    -- Use spaces instead of tabs
vim.opt.smartindent = true   -- Enable smart autoindenting

-- File handling settings
vim.opt.swapfile = false    -- Disable swap files
vim.opt.backup = false      -- Disable backups
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"  -- Set undo directory
vim.opt.undofile = true     -- Enable persistent undo

-- Search settings
vim.opt.hlsearch = false    -- Disable highlighted search results
vim.opt.incsearch = true    -- Enable incremental search

-- Terminal colors
vim.opt.termguicolors = true  -- Enable true color support

-- Scrolling settings
vim.opt.scrolloff = 8       -- Minimum number of lines to keep above/below the cursor

-- Other settings
vim.opt.arabicshape = false  -- Fix arabic text

vim.opt.wrap = false -- Controls whether long lines wrap or extend beyond the screen.

vim.opt.cursorline = true -- Highlights the current line
vim.opt.cursorcolumn = false -- and column
