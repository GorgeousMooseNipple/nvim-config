local lsp_installer = require('nvim-lsp-installer')

lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = require('bathcat.lsp.handlers').on_attach,
        capabilities = require('bathcat.lsp.handlers').capabilities,
    }

    if server.name == 'sumneko_lua' then
        local sumneko_opts = require('bathcat.lsp.settings.sumneko_lua')
        opts = vim.tbl_deep_extend('force', sumneko_opts, opts)
    end

    if server.name == 'pyright' then
        local pyright_opts = require('bathcat.lsp.settings.pyright')
        opts = vim.tbl_deep_extend('force', pyright_opts, opts)
    end

    if server.name == 'rust-analyzer' then
        local rust_analyzer_opts = require('bathcat.lsp.settings.rust_analyzer')
        opts = vim.tbl_deep_extend('force', rust_analyzer_opts, opts)
    end

    server:setup(opts)

end)
