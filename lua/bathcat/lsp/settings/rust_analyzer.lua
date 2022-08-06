return {
    flags = {
        debounce_text_changes = 150,
    },
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            },
            completion = {
                postfix = { enable = false },
            },
        }
    }
}
