return {
    update_in_insert = true,
    flags = {
        debounce_text_changes = 150,
    },
    settings = {
        ['rust-analyzer'] = {
            imports = {
                granularity = { group = 'module' },
                prefix = 'self',
            },
            cargo = {
                allFeatures = true,
                buildScripts = { enable = true },
            },
            procMacro = { enable = true },
            completion = {
                postfix = { enable = false },
            },
            diagnostics = { enable = true },
            checkOnSave = {
                command = 'clippy'
            },
        }
    }
}
