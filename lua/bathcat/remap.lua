local vnoremap = require('bathcat.keymap').vnoremap
local nnoremap = require('bathcat.keymap').nnoremap

vnoremap('<C-c>', '"+y')
vnoremap('<C-v>', '"+p')

-- Toggle between last two files
nnoremap('<leader><leader>', '<C-^>')

-- Jump to start and end of line
nnoremap('H', '^')
nnoremap('L', '$')

