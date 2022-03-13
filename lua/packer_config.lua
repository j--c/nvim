-- [[ Packer Setup ]]


return require('packer').startup(function()


    -----------------------[[
    -- third-party plugins --
    -----------------------]]


    -- packer... it will manage itself
    use {'wbthomason/packer.nvim'}


    -- plenary... many plugins require so load it first
    use {'nvim-lua/plenary.nvim'}


    -- nord.vim - colorscheme
    use {'shaunsingh/nord.nvim'}


    -- nvim-lspconfig
    use {'neovim/nvim-lspconfig'}


        -- nvim-cmp - autocomplete 
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}

    -- telescope - fuzzy file finder... and more
    use {'nvim-telescope/telescope.nvim'}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    use {'nvim-telescope/telescope-file-browser.nvim'}


    -- gitsigns
    use {'lewis6991/gitsigns.nvim', tag = 'release'}


    -- lualine - status line
    use {
        'nvim-lualine/lualine.nvim', 
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }


    -- nvim-teesitter - syntax highlighting
    use {'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'}


    -- luasnip - snippets
    use{'L3MON4D3/LuaSnip'}


    -----------------------[[
    --  own local plugins  --
    -----------------------]]
    
    -- nvterm - slightly better terminal support because I can pass commands to run
    use {'/home/jmc/Development/lua/nvterm'}


end)
