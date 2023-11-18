--[[ 
    local command_tbl = {}
    command_tbl['start flaskapp'] = '"python3 start_flaskapp.py\\n")'
    command_tbl['python unittest'] = '"python3 -m unittest -v\\n")'

    require('nvterm.init'.setup(command_tbl))

    vim.keymap.set('n', '<leader>2', ':Nvterm<cr>', {noremap=true, silent=false})
    vim.keymap.set('n', '<leader>3', ':NvtermVSplit<cr>', {noremap=true, silent=false})
    vim.keymap.set('n', '<leader>4', ':NvtermHSplit<cr>', {noremap=true, silent=false})
    vim.keymap.set('n', '<leader>5', ':Unittest<cr>', {noremap=true, silent=false})
    vim.keymap.set('n', '<leader>6', ':FlaskApp<cr>', {noremap=true, silent=false})
--]]

local nvterm = require('nvterm')
require 'nvterm'.add_cmd(6, '"python3 start_flaskapp.py')
require 'nvterm'.add_cmd(5, '"python3 -m unittest -v')


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
