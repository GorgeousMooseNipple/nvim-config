vim.opt.guicursor = ""

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Indents
vim.opt.smartindent = true

-- Wrap long lines visually
vim.opt.wrap = true

-- Set <leader> key as space
vim.g.mapleader = ' '

-- Start scrolling 6 lines from top/bottom
vim.opt.scrolloff = 6

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hidden = true

-- Column on the left for displaying linter warnings and errors
vim.opt.signcolumn = 'yes'

-- Syntax highlights
vim.opt.syntax = 'enable'
-- Activate filetype detection
vim.cmd[[filetype plugin indent on]]

-- Completion
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until selection is made
-- noselect: Do not select, force user to select one from menu
vim.opt.completeopt = 'menuone,noinsert,noselect'
-- Better display for messages
vim.opt.cmdheight = 2
-- Diagnostic messages update time. Default is 4000, too slow.
vim.opt.updatetime = 300

-- Disable mouse
vim.opt.mouse = ''

