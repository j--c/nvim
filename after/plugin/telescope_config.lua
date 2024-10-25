require('telescope').load_extension 'file_browser'
local builtin = require('telescope.builtin')

-- basic telescope keymaps 
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<cr>')
vim.keymap.set('n', '<leader>?',  builtin.help_tags, {})
vim.keymap.set('n', '<leader>1',  builtin.find_files, {})
vim.keymap.set('n', '<leader>gt', builtin.git_files, {})
vim.keymap.set('n', '<leader>rf', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>tr', builtin.treesitter, {})
vim.keymap.set('n', '<leader>gr', function()
    builtin.grep_string({ search = vim.fn.input('Grep > ')})
end)


-- more extensive telescope keymaps
local cfg = {
    prmpt_msg = 'Find files in: ',
    dflt_prmpt_val = vim.fn.getcwd(),
    cncl_msg = 'Operation cancelled!',
    err_msg = '  Error - Invalid directory!',
}

vim.keymap.set('n', '<leader>9',  function()
    local clean_dir_path = require 'cwd'.clean_dir_path('~/.config/nvim')
    if require 'cwd'.valid_dir_path(clean_dir_path) then
        builtin.find_files({cwd = clean_dir_path})
    else
        print(cfg.err_msg)
    end
end)

vim.keymap.set('n', '<C-v>',  function()
    local clean_dir_path = require 'cwd'.clean_dir_path(
        '~/.local/share/nvim/site/pack/packer/start'
    )
    if require 'cwd'.valid_dir_path(clean_dir_path) then
        builtin.find_files({cwd = clean_dir_path})
    else
        print(cfg.err_msg)
    end
end)

vim.keymap.set('n', '<leader>ff',  function()
    local usr_dir_path = require 'cwd'.get_dir_f_usr(cfg)
    local clean_dir_path = require 'cwd'.clean_dir_path(
        usr_dir_path
    )
    if require 'cwd'.valid_dir_path(clean_dir_path) then
        builtin.find_files({cwd = clean_dir_path})
    else
        print(cfg.err_msg)
    end
end)
