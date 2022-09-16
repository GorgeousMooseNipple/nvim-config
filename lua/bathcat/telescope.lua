require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ['<CR>'] = 'select_tab',
                ['<C-t>'] = 'select_default',
            }
        }
    }
}
