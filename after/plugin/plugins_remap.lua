local nnoremap = require('bathcat.keymap').nnoremap

-- nnoremap('<leader>ps', function() require('telescope.builtin').grep_string({search = vim.fn.input('Grep  for > ')}) end)
nnoremap('<leader>ps', '<cmd>Telescope find_files<cr>')

-- nvim-dap mappings
nnoremap('<leader>dsb', ':lua require("dap").toggle_breakpoint()<CR>')
nnoremap('<leader>dsc', ':lua require("dap").continue()<CR>')
nnoremap('<leader>dsi', ':lua require("dap").step_into()<CR>')
nnoremap('<leader>dso', ':lua require("dap").step_over()<CR>')
nnoremap('<leader>dsr', ':lua require("dap").step_out()<CR>')
nnoremap('<leader>dro', ':lua require("dap").repl.open()<CR>')

