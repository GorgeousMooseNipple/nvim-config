require("conform").setup({
    formatters_by_ft = {
        python = { 'ruff_format' },
    },
    fallback_on_save = {
        lsp_format = 'fallback',
    },
})
