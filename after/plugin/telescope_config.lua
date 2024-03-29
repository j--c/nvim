require('telescope').load_extension 'file_browser'
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<cr>')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>?',  builtin.help_tags, {})
vim.keymap.set('n', '<leader>1',  builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gt', builtin.git_files, {})
vim.keymap.set('n', '<leader>rf', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>tr', builtin.treesitter, {})
vim.keymap.set('n', '<leader>gr', function()
    builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)
