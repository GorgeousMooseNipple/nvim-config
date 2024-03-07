require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ['<esc>'] = 'close',
                ['<CR>'] = 'select_tab',
                ['<C-o>'] = 'select_default',
                ['<C-j>'] = 'move_selection_next',
                ['<C-k>'] = 'move_selection_previous',
            }
        }
    }
}
