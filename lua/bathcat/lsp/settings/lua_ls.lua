return {
    settings = {
        Lua = {
            runtime = { version = 'LuaJIT' },
            workspace = {
                checkThirdParty = false,
                library = {
                    unpack(vim.api.nvim_get_runtime_file('', true)),
                },
            },
            completion = {
                callSnippet = 'Replace',
            },
        },
    }
}
