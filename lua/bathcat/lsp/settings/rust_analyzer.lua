-- Rust-tool options
local tools_opts = {
    tools = { autoSetHints = true,
    hover_with_actions = true,
    inlay_hints = {
        show_parameter_hints = false,
        parameter_hints_prefix = '',
        other_hints_prefix = '',
    }
}}

require('rust-tools').setup(tools_opts)

return {
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
            server = { path='/home/dmitry/.local/bin/rust-analyzer' },
        }
    }
}
