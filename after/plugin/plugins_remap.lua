local nnoremap = require('bathcat.keymap').nnoremap
local vnoremap = require('bathcat.keymap').vnoremap

-- nnoremap('<leader>ps', function() require('telescope.builtin').grep_string({search = vim.fn.input('Grep  for > ')}) end)
nnoremap('<leader>ps', '<cmd>Telescope find_files<cr>')
nnoremap('<leader>ni', '<cmd>Telescope find_files no_ignore=true<cr>')
nnoremap('<leader>lg', '<cmd>Telescope live_grep<cr>')

-- nvim-dap mappings
nnoremap('<leader>db', ':lua require("dap").toggle_breakpoint()<CR>')
nnoremap('<leader>dc', ':lua require("dap").continue()<CR>')
nnoremap('<leader>ds', ':lua require("dap").step_into()<CR>')
nnoremap('<leader>dn', ':lua require("dap").step_over()<CR>')
nnoremap('<leader>do', ':lua require("dap").step_out()<CR>')
nnoremap('<leader>dr', ':lua require("dap").repl.open()<CR>')

-- Nerdcommenter
nnoremap('<leader>cc', '<plug>NERDCommenterInvert')
vnoremap('<leader>cc', '<plug>NERDCommenterInvert')
nnoremap('<leader>cs', '<plug>NERDCommenterSexy')
vnoremap('<leader>cs', '<plug>NERDCommenterSexy')

