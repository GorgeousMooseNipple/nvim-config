-- Access colours present in 256 colorspace
vim.g.base16colorspace = 256
-- Set dark mode
vim.opt.background = 'dark'

-- vim.fn.has() returns 0 for false and 1 for true which are both truthy in lua so compare to 1
if vim.fn.has('termguicolors') == 1 then
    vim.opt.termguicolors = true
end

-- Change nvim-cmp pop-up completion menu colours
vim.api.nvim_command [[highlight CmpItemAbbrDefault guifg=#665c54]]
vim.api.nvim_command [[highlight CmpItemAbbrMatchDefault guifg=lightgrey]]
vim.api.nvim_command [[highlight CmpItemAbbrMatchFuzzyDefault guifg=lightgrey]]
vim.api.nvim_command [[highlight CmpItemKindDefault guifg=#fabd2f]]
vim.api.nvim_command [[highlight CmpItemMenuDefault guifg=lightgrey]]

-- Set up highlights for Illuminate
-- vim.api.nvim_set_hl(0, 'IlluminatedWordText', { link = 'CursorLine' })
-- vim.api.nvim_set_hl(0, 'IlluminatedWordRead', { link = 'CursorLine' })
-- vim.api.nvim_set_hl(0, 'IlluminatedWordWrite', { link = 'CursorLine' })

vim.g.airline_section_z =
'%2.p%%%#__accent_bold# ln:%l%#__restore__#%#__accent_bold#/%L%#__restore__#%#__accent_bold# cl:%-3.v%#__restore__#'

vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = '' })

require("kanagawa").load("wave")
