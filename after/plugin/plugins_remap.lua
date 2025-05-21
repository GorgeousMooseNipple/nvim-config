local nnoremap = require('bathcat.keymap').nnoremap
local vnoremap = require('bathcat.keymap').vnoremap

local function find_files_no_bin()
    require('telescope.builtin').find_files {
        find_command = {
            "rg",
            "-l",
            ".*",
            "--follow",
            "--hidden",
            "--glob",
            "!target/*",
        },
    }
end

-- nnoremap('<leader>ps', '<cmd>Telescope find_files<cr>')
nnoremap('<leader>ps', find_files_no_bin)
nnoremap('<leader>ni', '<cmd>Telescope find_files no_ignore=true<cr>')
nnoremap('<leader>lg', '<cmd>Telescope live_grep<cr>')
nnoremap('<leader>sk', '<cmd>Telescope keymaps<cr>')
nnoremap('<leader>/', function()
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        preview = false,
    })
end
)

-- nvim-dap mappings
nnoremap('<leader>db', ':lua require("dap").toggle_breakpoint()<CR>')
nnoremap('<leader>dc', ':lua require("dap").continue()<CR>')
nnoremap('<leader>ds', ':lua require("dap").step_into()<CR>')
nnoremap('<leader>dn', ':lua require("dap").step_over()<CR>')
nnoremap('<leader>do', ':lua require("dap").step_out()<CR>')
nnoremap('<leader>dr', ':lua require("dap").repl.open()<CR>')

-- Nerdcommenter
nnoremap('<leader>cc', '<plug>NERDCommenterToggle')
vnoremap('<leader>cc', '<plug>NERDCommenterToggle')
nnoremap('<leader>cs', '<plug>NERDCommenterSexy')
vnoremap('<leader>cs', '<plug>NERDCommenterSexy')
