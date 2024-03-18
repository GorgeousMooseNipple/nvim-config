-- This file can be loaded by calling 'lua require('packages') from your init.vim

-- Only required if you have packer configured as 'opt'
vim.cmd [[packadd packer.nvim]]

-- Just because LSP yelled at me
local use = require('packer').use

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Info bar at the bottom
    use 'vim-airline/vim-airline'
    -- Colour schemes
    use 'chriskempson/base16-vim'
    use 'NLKNguyen/papercolor-theme'
    use 'jacoborus/tender.vim'
    use 'rhysd/vim-color-spring-night'
    use {
        'shaunsingh/oxocarbon.nvim',
        run = './install.sh',
    }
    use 'rebelot/kanagawa.nvim'
    -- Vertical indent lines
    use 'yggdroot/indentLine'
    -- Rainbow parenthesis
    use 'luochen1990/rainbow'
    -- Fuzzy finder Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- LSP
    use 'neovim/nvim-lspconfig'
    -- Language servers installer
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    -- Completions
    use { 'hrsh7th/nvim-cmp', branch = 'main' } -- Completions framework
    use { 'hrsh7th/cmp-nvim-lsp', branch = 'main' } -- Completions for nvim builtin LSP
    use { 'hrsh7th/cmp-buffer', branch = 'main' } -- Buffer completions
    use { 'hrsh7th/cmp-path', branch = 'main' } -- Path completions
    use { 'hrsh7th/cmp-cmdline', branch = 'main' } -- Cmd completions
    use { 'hrsh7th/cmp-vsnip', branch = 'main' } -- Snippets completions
    use { 'hrsh7th/vim-vsnip' } -- Snippets engine
    -- Rust file detection, syntax highlighting, formating etc
    -- use 'rust-lang/rust.vim'
    -- Debugger
    use 'mfussenegger/nvim-dap'
    -- Commenter
    use 'preservim/nerdcommenter'
    -- Highlight other uses of the current word
    use 'RRethy/vim-illuminate'
    -- Syntax highlights, seelction, navigation
    use 'nvim-treesitter/nvim-treesitter'
end)
