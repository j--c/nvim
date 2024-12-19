vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
    function(use)

        ----------------------------------------------------------
        -- Packer
        use ('wbthomason/packer.nvim')
        ----------------------------------------------------------
        -- Gruvbox (colorscheme)
        use ('ellisonleao/gruvbox.nvim')
        ----------------------------------------------------------
        -- OneDark (colorscheme)
        use ('navarasu/onedark.nvim')
        ----------------------------------------------------------
        -- OneDark (colorscheme)
        use ('marko-cerovac/material.nvim')
       ----------------------------------------------------------
        -- LuaLine 
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'nvim-tree/nvim-web-devicons', opt = true }
            }
        ----------------------------------------------------------
        -- Telescope
        use ({
            'nvim-telescope/telescope.nvim', tag = '0.1.4',
            requires = { {'nvim-lua/plenary.nvim'} }
        })
        use {
            'nvim-telescope/telescope-file-browser.nvim',
            requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }
        }
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
                -- snippets
                {'L3MON4D3/LuaSnip'},
                -- Autocompletion
                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'hrsh7th/cmp-buffer'},
                {'hrsh7th/cmp-path'},
                {'hrsh7th/cmp-cmdline'},
            }
        }
        use { 'saadparwaiz1/cmp_luasnip' }
        ----------------------------------------------------------
        -- Toggle Term
        use('akinsho/toggleterm.nvim')
        ----------------------------------------------------------
        -- cwd.nvim
        use ('j--c/cwd.nvim')
        --use ('~/dev/lua/my-plugins/cwd.nvim')
    end
)
