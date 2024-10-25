require('toggleterm').setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 7
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    shade_terminals = false,
    boder = 'single'
})

local hdn = require('global_hidden')

local exec_cmds = {
    flsk = 'cmd="flask run --host=' .. hdn.flsk_dev_host .. ' --port=9999"',
    env = 'direction=vertical cmd="env"',
    git_push = 'cmd="git push origin main"',
    git_pull = 'cmd="git pull origin main"',
}

vim.keymap.set('n', '<leader>2', ':ToggleTerm direction="float"<cr>', {})
vim.keymap.set('n', '<leader>6', ':TermExec ' .. exec_cmds.flsk .. '<cr>', {})
vim.keymap.set('n', '<C-e>', ':TermExec ' .. exec_cmds.env ..  '<cr>', {})
vim.keymap.set('n', '<leader>7', ':TermExec ' .. exec_cmds.git_push ..  '<cr>', {})
vim.keymap.set('n', '<leader>8', ':TermExec ' .. exec_cmds.git_pull ..  '<cr>', {})
