local nnoremap = require('bathcat.keymap').nnoremap

-- nnoremap('<leader>ps', function() require('telescope.builtin').grep_string({search = vim.fn.input('Grep  for > ')}) end)
nnoremap('<leader>ps', '<cmd>Telescope find_files<cr>')

