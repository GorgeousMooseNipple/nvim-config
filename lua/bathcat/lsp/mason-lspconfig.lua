local mason_lspconfig = require('mason-lspconfig')

local servers = { 'lua_ls', 'basedpyright', 'rust_analyzer', 'bashls', 'taplo' }

mason_lspconfig.setup({
    ensure_installed = servers,
    automatic_enable = false,
})

for _, server in pairs(servers) do
    local opts = {
        capabilities = require('bathcat.lsp.handlers').capabilities,
    }
    local has_settings, settings = pcall(require, 'bathcat.lsp.settings.' .. server)
    if has_settings then
        opts = vim.tbl_deep_extend('force', opts, settings)
    end
    vim.lsp.config(server, opts)
    vim.lsp.enable(server)
end

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        require('bathcat.lsp.handlers').on_attach(args.data.client_id, args.buf)
    end
})
