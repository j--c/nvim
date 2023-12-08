vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
    function(use)

        ----------------------------------------------------------
        -- Packer
        use ('wbthomason/packer.nvim')
        ----------------------------------------------------------
        -- Tokyo Night (colorscheme)
        use ('folke/tokyonight.nvim')
        ----------------------------------------------------------
        -- Gruvbox (colorscheme)
        use ('ellisonleao/gruvbox.nvim')
        ----------------------------------------------------------
        -- OneDark (colorscheme)
        use ('navarasu/onedark.nvim')
        ----------------------------------------------------------
        -- Telescope
        use ({
            'nvim-telescope/telescope.nvim', tag = '0.1.4',
            requires = { {'nvim-lua/plenary.nvim'} }
        })
        ----------------------------------------------------------
        -- Treesitter
        use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
        ----------------------------------------------------------
        -- Vim Fugitive
        use ('tpope/vim-fugitive')
        ----------------------------------------------------------
        -- LSP Zero
        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',
            requires = {
                -- Uncomment these if you want to manage LSP servers from neovim
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},
                -- LSP Support
                {'neovim/nvim-lspconfig'},
                -- Autocompletion
                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-nvim-lsp'},
                {
                    'L3MON4D3/LuaSnip',
                }
            }
        }
        use { 'saadparwaiz1/cmp_luasnip' }
        ----------------------------------------------------------
        -- NV Term
        use ('j--c/nvterm')
        -- use ('~/dev/lua/nvterm')
        ----------------------------------------------------------
        use ('j--c/nvcd')

    end
)
