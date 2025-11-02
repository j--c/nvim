------------------------------------------------------------------------------
-- telescope.nvim configuration
------------------------------------------------------------------------------
return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-file-browser.nvim',
            {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}
        },
        config = function()
            require('telescope').setup {}
            require('telescope').load_extension 'file_browser'


            -- Key map for help tags
            vim.keymap.set('n', '<leader><space>', require('telescope.builtin').help_tags)

            -- Key map to find files
            vim.keymap.set('n', '<leader><leader>', require('telescope.builtin').find_files)

            -- Key map to browse files
            vim.keymap.set('n', '<leader>b', ':Telescope file_browser<cr>')

            -- Key map to search content within files
            vim.keymap.set('n', '<leader>g', require('telescope.builtin').live_grep)
        end
    }
}
