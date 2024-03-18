-- Enable rainbow parenthesis
vim.g.rainbow_active = 1

-- Rust
vim.g.rustfmt_autosave = 1
vim.g.rustfmt_fail_silently = 0

-- Nerdcommenter
vim.g.NERDCreateDefaultMappings = 0
vim.g.NERDSpaceDelims = 1
vim.g.NERDCommentEmptyLines = 1
vim.g.NERDTrimTrailingWhitespace = 1
vim.g.NERDToggleCheckAllLines = 1
vim.g.NERDCompactSexyComs = 1
-- vim.g.NERDDefaultAlign = 'left'
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'python',
    callback =  function()
        vim.g.NERDDefaultAlign = 'left'
    end,
})

-- Illuminate
-- vim.g.Illuminate_delay = 200

