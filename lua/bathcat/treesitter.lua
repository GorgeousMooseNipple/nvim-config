require('nvim-treesitter.configs').setup {
    ensure_installed = { 'go', 'lua', 'python', 'rust', 'bash' },

    highlight = { enable = true },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<C-space>',
            node_incremental = '<C-space>',
            scope_incremental = '<C-s>',
            node_decremental = '<C-d>',
        },
    },
    textobjects = {
        move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
                [']m'] = '@function.outer',
                [']]'] = '@block.outer',
            },
            goto_next_end = {
                [']M'] = '@function.outer',
                [']['] = '@block.outer',
            },
            goto_previous_start = {
                ['[m'] = '@function.outer',
                ['[['] = '@block.outer',
            },
            goto_previous_end = {
                ['[M'] = '@function.outer',
                ['[]'] = '@block.outer',
            },
        }
    }
}
