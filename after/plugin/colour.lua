-- Set up base16-gruvbox-dark-hard colour scheme
vim.g.base16colorspace = 256
vim.cmd("colorscheme base16-gruvbox-dark-hard")
vim.opt.background = 'dark'

-- Vim.fn.has() returns 0 for false and 1 for true which are both truthy in lua so compare to 1
if vim.fn.has('termguicolors') == 1 then
    vim.opt.termguicolors = true
end

-- Change nvim-cmp pop-up completion menu colours
vim.cmd[[highlight CmpItemAbbrDefault guifg=#665c54]]
vim.cmd[[highlight CmpItemAbbrMatchDefault guifg=lightgrey]]
vim.cmd[[highlight CmpItemAbbrMatchFuzzyDefault guifg=lightgrey]]
vim.cmd[[highlight CmpItemKindDefault guifg=#fabd2f]]
vim.cmd[[highlight CmpItemMenuDefault guifg=lightgrey]]

