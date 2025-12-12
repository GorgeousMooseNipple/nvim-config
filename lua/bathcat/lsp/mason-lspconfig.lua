local mason_lspconfig = require('mason-lspconfig')

local servers = { 'lua_ls', 'basedpyright', 'bashls', 'clangd', 'robotframework_ls' }

mason_lspconfig.setup({
    ensure_installed = servers,
    automatic_enable = false,
})

for _, server in pairs(servers) do
    local opts = {
        on_attach = require('bathcat.lsp.handlers').on_attach,
        capabilities = require('bathcat.lsp.handlers').capabilities,
    }
    local has_settings, settings = pcall(require, 'bathcat.lsp.settings.' .. server)
    if has_settings then
        opts = vim.tbl_deep_extend('force', opts, settings)
    end
    vim.lsp.config(server, opts)
    vim.lsp.enable(server)
end
