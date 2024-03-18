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
}
