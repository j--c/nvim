require('telescope').load_extension 'file_browser'
local builtin = require('telescope.builtin')

local get_input_from_user = function(prompt_msg)
    return vim.fn.input(prompt_msg .. ' > ')
end

local is_valid_directory = function(path)
    return (vim.fn.isdirectory(path)) ~= 0
end

local get_path_from_user = function(prompt_msg)
    local user_path = get_input_from_user(prompt_msg)
    user_path =  user_path:gsub("%s+", "")
    return user_path:gsub('~', vim.env.HOME)
end

local find_files_in_dir = function(find_prompt, invalid_dir_msg, dir)
    if dir == nil then
        dir = get_path_from_user(find_prompt)
    end
    if dir ~= nil and is_valid_directory(dir) then
        builtin.find_files({cwd = dir})
    else
        print(invalid_dir_msg)
    end
end

vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<cr>')
vim.keymap.set('n', '<leader>?',  builtin.help_tags, {})
vim.keymap.set('n', '<leader>1',  builtin.find_files, {})
vim.keymap.set('n', '<leader>gt', builtin.git_files, {})
vim.keymap.set('n', '<leader>rf', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>tr', builtin.treesitter, {})
vim.keymap.set('n', '<leader>gr', function()
    builtin.grep_string({ search = get_input_from_user('Grep') });
end)

vim.keymap.set('n', '<leader>9',  function()
    find_files_in_dir(nil, nil, '/home/jc/.config/nvim')
end)

vim.keymap.set('n', '<leader>ff',  function()
    find_files_in_dir('Find files in: ', 'Invalid directory!', nil)
end)
