return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')

            -- Keymaps 
            vim.keymap.set('n', '<leader>?',  builtin.help_tags, {})
            vim.keymap.set('n', '<leader>1',  builtin.find_files, {})
            vim.keymap.set('n', '<leader>gt', builtin.git_files, {})
            vim.keymap.set('n', '<leader>rf', builtin.lsp_references, {})
        end
    }
}
