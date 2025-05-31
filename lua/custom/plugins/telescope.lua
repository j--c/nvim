------------------------------------------------------------------------------
-- telescope.nvim configuration
------------------------------------------------------------------------------
return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require('telescope').setup {
            }

            -- Key map for help tags
            vim.keymap.set('n', '<leader><space>', require('telescope.builtin').help_tags)

            -- Key map to find files
            vim.keymap.set('n', '<leader><leader>', require('telescope.builtin').find_files)
        end
    }
}
