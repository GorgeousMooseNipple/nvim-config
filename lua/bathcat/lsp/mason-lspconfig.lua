local mason_lspconfig = require('mason-lspconfig')

local lspconfig = require('lspconfig')

local servers = { 'lua_ls', 'pyright', 'rust_analyzer', 'bashls', 'taplo', 'gopls' }

mason_lspconfig.setup({
    ensure_installed = servers,
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
    lspconfig[server].setup(opts)
end

