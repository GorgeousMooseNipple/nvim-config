local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
        ['<C-e>'] = cmp.mapping {
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        },
        -- Accept currently selected item. If none selected, then first item.
        -- Set select to false to only confirm explicitly selected items
        -- ['<CR>'] = cmp.mapping.confirm( {select = true} ),
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
                })[entry.source.name]
                return vim_item
            end
        },
        sources = {
            { name = 'nvim_lsp' },
            { name = 'buffer' },
            { name = 'path' },
        },
        confirm_opts = {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
        },
    }
)

