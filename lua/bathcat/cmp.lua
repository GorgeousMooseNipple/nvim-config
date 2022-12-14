local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },
    mapping = {
        -- ['<C-k>'] = cmp.mapping.select_prev_item(),
        -- ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
        ['<C-e>'] = cmp.mapping {
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        },
        -- Accept currently selected item. If none selected, then first item.
        -- Set select to false to only confirm explicitly selected items
        ['<CR>'] = cmp.mapping.confirm( {select = false} ),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, {'i', 's'}),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end)},
    formatting = {
        fields = {'kind', 'abbr', 'menu'},
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
        {
            name = 'cmdline',
            entry_filter = function(entry, ctx)
                return require('cmp.types').lsp.CompletionItemKind[entry:get_kind()] ~= 'Variable'
            end
        },
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

-- Enable completing paths in :
cmp.setup.cmdline(':',  {
    sources = cmp.config.sources({
        { name = 'path' }
    })
})

