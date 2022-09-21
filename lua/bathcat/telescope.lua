require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ['<CR>'] = 'select_tab',
                ['<C-o>'] = 'select_default',
            }
        }
    }
}
