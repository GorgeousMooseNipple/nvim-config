require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            ".*.tar.gz",
        },
        mappings = {
            i = {
                ['<esc>'] = 'close',
                ['<C-o>'] = 'select_tab',
                ['<CR>'] = 'select_default',
                ['<C-j>'] = 'move_selection_next',
                ['<C-k>'] = 'move_selection_previous',
            }
        }
    }
}
