require 'nvterm'.setup()

vim.keymap.set('n', '<leader>2', function()
    require 'nvterm'.run('', nil)
end)

vim.keymap.set('n', '<leader>3', function()
    require 'nvterm'.run('v', nil)
end)

vim.keymap.set('n', '<leader>4', function()
    require 'nvterm'.run('h', nil)
end)

vim.keymap.set('n', '<leader>5', function()
    require 'nvterm'.run('h', 5)
end)

vim.keymap.set('n', '<leader>6', function()
    require 'nvterm'.run('h', 6)
end)

vim.keymap.set('n', '<leader>7', function()
    require 'nvterm'.run('h', 7)
end)
