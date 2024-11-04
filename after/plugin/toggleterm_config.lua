require('toggleterm').setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 7
        elseif term.direction == "vertical" then
            return vim.o.columns * 1
        end
    end,
    open_mapping = [[<A-t>]],
    hide_numbers = true,
    shade_terminals = false,
    shading_factor = 20,
    boder = 'single',
    start_in_insert = true,
    shell = vim.o.shell
})


local hdn = require('global_hidden')

local directs = {
    dh = 'direction=horizontal ',
    dv = 'direction=vertical ',
}

local exec_cmds = {
    flsk = 'cmd="flask run --host=' .. hdn.flsk_dev_host .. ' --port=9999"',
    envs = 'cmd="env"',
    push = 'cmd="git push origin main"',
    pull = 'cmd="git pull origin main"',
    unittest = 'cmd="python3 -m unittest -v"',
    bdd = 'cmd="behave test/features"',
}


vim.keymap.set(
    'n', '<A-6>',
    ':TermExec ' .. directs.dh .. ' go_back=0 ' .. exec_cmds.flsk .. '<cr>',
{})

vim.keymap.set(
    'n', '<A-e>',
    ':TermExec ' .. directs.dh .. ' go_back=0 ' .. exec_cmds.envs .. '<cr>',
{})

vim.keymap.set(
    'n', '<A-7>',
    ':TermExec ' .. directs.dh .. ' go_back=0 ' .. exec_cmds.push .. '<cr>',
{})

vim.keymap.set(
    'n', '<A-8>',
    ':TermExec ' .. directs.dh .. ' go_back=0 '.. exec_cmds.pull .. '<cr>',
{})

vim.keymap.set(
    'n', '<A-0>',
    ':TermExec ' .. directs.dv .. ' go_back=0 ' .. exec_cmds.unittest .. '<cr>',
{})

vim.keymap.set(
    'n', '<A-5>',
    ':TermExec ' .. directs.dv .. ' go_back=0 ' .. exec_cmds.bdd .. '<cr>',
{})
