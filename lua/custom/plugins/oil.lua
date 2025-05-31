------------------------------------------------------------------------------
-- oil.nvim configuration
------------------------------------------------------------------------------
return {
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        lazy = false,
        config = function()
            require("oil").setup()

            -- Key map to launch oil.nvim
            vim.keymap.set('n', '<leader>e', ':Oil<cr>')
        end
    }
}
