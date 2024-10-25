require('toggleterm').setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 7
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<A-t>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 20,
    boder = 'single',
    start_in_insert = true,
    shell = vim.o.shell
})


local hdn = require('global_hidden')


local exec_cmds = {
    flsk = 'cmd="flask run --host=' .. hdn.flsk_dev_host .. ' --port=9999"',
    env = 'direction=vertical cmd="env"',
    git_push = 'cmd="git push origin main"',
    git_pull = 'cmd="git pull origin main"',
}


vim.keymap.set('n', '<A-6>', ':TermExec direction=vertical ' .. exec_cmds.flsk .. '<cr>', {})
vim.keymap.set('n', '<A-e>', ':TermExec ' .. exec_cmds.env ..  '<cr>', {})
vim.keymap.set('n', '<A-7>', ':TermExec ' .. exec_cmds.git_push ..  '<cr>', {})
vim.keymap.set('n', '<A-8>', ':TermExec ' .. exec_cmds.git_pull ..  '<cr>', {})
