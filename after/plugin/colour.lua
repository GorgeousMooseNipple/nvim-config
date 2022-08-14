-- Set up base16-gruvbox-dark-hard colour scheme
vim.g.base16colorspace = 256
vim.opt.background = 'dark'
-- vim.cmd('colorscheme base16-gruvbox-dark-hard')
vim.cmd('colorscheme PaperColor')
-- vim.cmd('colorscheme tender')
-- vim.cmd('colorscheme spring-night')

-- Vim.fn.has() returns 0 for false and 1 for true which are both truthy in lua so compare to 1
-- if vim.fn.has('termguicolors') == 1 then
    -- vim.opt.termguicolors = true
-- end

-- Change nvim-cmp pop-up completion menu colours
vim.api.nvim_command[[highlight CmpItemAbbrDefault guifg=#665c54]]
vim.api.nvim_command[[highlight CmpItemAbbrMatchDefault guifg=lightgrey]]
vim.api.nvim_command[[highlight CmpItemAbbrMatchFuzzyDefault guifg=lightgrey]]
vim.api.nvim_command[[highlight CmpItemKindDefault guifg=#fabd2f]]
vim.api.nvim_command[[highlight CmpItemMenuDefault guifg=lightgrey]]

-- Set up LSP highlights. Illuminate will use theese.
vim.api.nvim_command[[ hi def link LspReferenceText CursorLine ]]
vim.api.nvim_command[[ hi def link LspReferenceWrite CursorLine ]]
vim.api.nvim_command[[ hi def link LspReferenceRead CursorLine ]]

