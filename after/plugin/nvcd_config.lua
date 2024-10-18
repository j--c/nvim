vim.keymap.set('n', '<leader>9', function()
    require 'nvcd'.change_working_dir(
        {
            cur_wd_path = vim.fn['getcwd'](),
            new_wd_path = '~/.config/nvim',
            relative = false
        }
    )
end)

vim.keymap.set('n', '<leader>n', function()
    local has_prev = require 'nvcd'.has_previous_wd()
    local usr_path = ''
    if has_prev == false then
        usr_path = vim.fn.input('Dir > ')
    end
    require 'nvcd'.change_working_dir(
        {
            cur_wd_path = vim.fn['getcwd'](),
            new_wd_path = usr_path,
            relative = true
        }
    )
end)
