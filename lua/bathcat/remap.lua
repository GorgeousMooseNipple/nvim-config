local vnoremap = require('bathcat.keymap').vnoremap
local nnoremap = require('bathcat.keymap').nnoremap

vnoremap('<C-c>', '"+y')
vnoremap('<C-v>', '"+p')

-- Toggle between last two files
nnoremap('<leader><leader>', '<C-^>')

-- Jump to start and end of line
nnoremap('H', '^')
nnoremap('L', '$')

nnoremap('<A-j>', ':m +1<CR>')
nnoremap('<A-k>', ':m -2<CR>')

vnoremap("<A-j>", ":m '>+1<CR>gv=gv")
vnoremap("<A-k>", ":m '<-2<CR>gv=gv")

