------------------------------------------------------------------------------
-- nvim-lspconfig configuration
------------------------------------------------------------------------------
return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            -- python, lua lsp server setup
            vim.lsp.enable({'luals', 'pylsp'})
        end
    }
}
