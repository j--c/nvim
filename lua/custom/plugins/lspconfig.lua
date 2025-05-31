------------------------------------------------------------------------------
-- nvim-lspconfig configuration
------------------------------------------------------------------------------
return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            -- python lsp server setup
            require('lspconfig').pylsp.setup {capabilities}

            -- python lsp server
            require('lspconfig').lua_ls.setup {capabilities}
        end
    }
}
