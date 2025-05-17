return {
    {
        'j--c/cwd.nvim',
        config = function()
            require 'cwd'.setup()
            vim.keymap.set(
                'n', '<leader>m', ':CwdSwapNvim<cr>', {noremap=true, silent=false}
            )
            vim.keymap.set(
                'n', '<leader>n', ':CwdSwap<cr>', {noremap=true, silent=false}
            )
        end
    }
}
