local M = {}

M.setup = function()
    -- Signs for linting panel on the left side of the screen
    local signs = {
        { name = "DiagnosticSignError", text = "✖" },
        { name = "DiagnosticSignWarn", text = "⚠" },
        { name = "DiagnosticSignHint", text = "ℹ" },
        { name = "DiagnosticSignInfo", text = "?" },
    }

    for _, sign in pairs(signs) do
        vim.fn.sign_define(sign.name, { texth1 = sign.name, text = sign.text, numh1 = '' })
    end

    local config = {
        virtual_text = true,
        -- Show signs
        signs = { active = signs },
        update_in_insert = false,
        underline = true,
        severity_sort = true,
        float = {
            focusable = true,
            style = 'minimal',
            border = 'rounded',
            source = 'always',
            header = '',
            prefix = '',
        }
    }

    vim.diagnostic.config(config)

    vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = 'rounded',
        width = 60,
        focusable = true,
    })

    vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = 'rounded',
        width = 60,
    })

    -- Format on save for .go files
    vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*.go',
        command = 'lua vim.lsp.buf.format()',
    })

    -- Format on save for .py files
    vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.py",
        callback = function(args)
            require("conform").format({ bufnr = args.buf })
        end,
    })

    -- Format on save for .rs files
    vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*.rs',
        command = 'lua vim.lsp.buf.format()',
    })

    -- Format on save for .lua files
    vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*.lua',
        command = 'lua vim.lsp.buf.format()',
    })
end

-- Keybindings for LSP
local function lsp_keymaps(bufnr)
    local function keymap(lhs, rhs)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', lhs, rhs, { noremap = true, silent = true })
    end
    keymap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
    keymap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
    keymap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')
    keymap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
    keymap('<C-k>', '<cmd>lua vim.lsp.bug.signature_help()<CR>')
    keymap('<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
    keymap('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
    keymap('<leader>f', '<cmd>lua vim.diagnostic.open_float()<CR>')
    keymap('[d', '<cmd>lua vim.diagnostic.jump({count = -1, float = true})<CR>')
    keymap(']d', '<cmd>lua vim.diagnostic.jump({count = 1, float = true})<CR>')
    keymap('[e', '<cmd>lua vim.diagnostic.jump({count = -1, float = true, severity = vim.diagnostic.severity.ERROR})<CR>')
    keymap(']e', '<cmd>lua vim.diagnostic.jump({count = 1, float = true, severity = vim.diagnostic.severity.ERROR})<CR>')
    keymap('<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')
    keymap('<leader>ca', '<cmd>lua vim.lsp.buf.code_action({apply = true})<CR>')
    vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format{async=true}' ]])
end

M.on_attach = function(client, bufnr)
    lsp_keymaps(bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local status_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not status_ok then
    return
end

M.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
-- Disable snippets
M.capabilities.textDocument.completion.completionItem.snippetSupport = false

return M
