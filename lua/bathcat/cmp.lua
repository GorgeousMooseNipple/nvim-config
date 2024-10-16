local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },
    mapping = {
        ['<C-k>'] = cmp.mapping.scroll_docs(-4),
        ['<C-j>'] = cmp.mapping.scroll_docs(4),
        ['<C-e>'] = cmp.mapping {
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        },
        -- Set select to false to only confirm explicitly selected items
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { 'i', 's' })
    },
    formatting = {
        fields = { 'kind', 'abbr', 'menu' },
        format = function(entry, vim_item)
            vim_item.menu = ({
                nvim_lsp = '[LSP]',
                path = '[Path]',
                buffer = '[Buffer]',
                cmdline = '[CMD]',
                vsnip = '[Snip]',
            })[entry.source.name]
            return vim_item
        end
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'vsnip' },
    },
    confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
    },
    experimental = {
        ghost_text = true,
    },
    preselect = { 'None', }
})

-- Setup completion in command mode
cmp.setup.cmdline(':', {
    completion = {
        autocomplete = false,
    },
    mapping = cmp.mapping.preset.cmdline({
        ['<C-space>'] = {
            c = function(_)
                if cmp.visible() then
                    cmp.complete_common_string()
                end
            end,
        },
        ['<Tab>'] = {
            c = function(_)
                if cmp.visible() then
                    cmp.select_next_item()
                else
                    cmp.complete()
                    cmp.complete_common_string()
                end
            end,
        },
    }),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        {
            name = 'cmdline',
        }
    })
})
