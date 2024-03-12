require('telescope').setup{
    defaults = {
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
