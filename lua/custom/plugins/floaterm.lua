------------------------------------------------------------------------------
-- floaterm.nvim configuration
------------------------------------------------------------------------------
return {
    {
        'j--c/floaterm.nvim',
        config = function()

            -- Key map to toggle floating terminal
            vim.api.nvim_set_keymap('n', '<leader>t', ':Floaterm<cr>', {noremap = true})

            -- Key map to escape out of terminal mode 
            vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-N>', {noremap = true})
        end
    }
}
