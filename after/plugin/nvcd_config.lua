vim.keymap.set('n', '<leader>9', function()
    require 'nvcd'.change_working_dir('~/.config/nvim')
end)

vim.keymap.set('n', '<leader>n', function()
    require 'nvcd'.change_working_dir('~/gtd/note')
end)
