------------------------------------------------------------------------------
-- cwd.nvim configuration
------------------------------------------------------------------------------
return {
    {
        'j--c/cwd.nvim',
        config = function()
            require('cwd').setup()

            -- Key map to swap working directory to neovim config
            vim.api.nvim_set_keymap('n', '<leader>m', ':CwdSwapNvim<cr>', {noremap = true})

            -- Key map to swap working directory 
            vim.api.nvim_set_keymap('n', '<leader>n', ':CwdSwap<cr>', {noremap = true})
        end
    }
}
