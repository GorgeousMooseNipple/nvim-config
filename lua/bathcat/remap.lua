local vnoremap = require('bathcat.keymap').vnoremap
local nnoremap = require('bathcat.keymap').nnoremap
local xnoremap = require('bathcat.keymap').xnoremap

-- Copy and paste from system clipboard
vnoremap('<C-c>', '"+y')
vnoremap('<C-v>', '"+p')

-- Toggle between last two files
nnoremap('<leader><leader>', '<C-^>')

-- Jump to start and end of line
nnoremap('H', '^')
nnoremap('L', '$')

-- Move current line up and down
nnoremap('<A-j>', ':m +1<CR>')
nnoremap('<A-k>', ':m -2<CR>')

-- Move selected block of lines up and down
vnoremap("<A-j>", ":m '>+1<CR>gv=gv")
vnoremap("<A-k>", ":m '<-2<CR>gv=gv")

-- Move up/down half page and center view
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")

-- Paste without storing replaced text in buffer
xnoremap("<leader>p", "\"_dP")

