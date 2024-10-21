require('telescope').load_extension 'file_browser'
local builtin = require('telescope.builtin')

local is_valid_directory = function(path)
    return (vim.fn.isdirectory(path)) ~= 0
end

local prompt_for_new_wd = function(prompt, cncl_tkn)
    local input_opts = {
        prompt = prompt,
        default = vim.env.HOME,
        completion = "dir",
        cancelreturn = cncl_tkn
    }
    return vim.fn.input(input_opts)
end

local scrub_path = function(path)
    local trimmed_path = path:gsub("%s+", "")
    local scrubbed_path = trimmed_path:gsub('~', vim.env.HOME)
    return scrubbed_path
end

local find_files_in_dir = function(opts)
    local dir = opts.dir
    if dir == nil then
        dir = prompt_for_new_wd('Find files in: ', opts.cncl_tkn)
    end
    if (dir == opts.cncl_tkn) then
        print('Operation cancelled!')
    else
        local scrubbed_dir_path = scrub_path(dir)
        if is_valid_directory(scrubbed_dir_path) then
            builtin.find_files({cwd = scrubbed_dir_path})
        else
            print('Invalid directory!')
        end
    end
end

vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<cr>')
vim.keymap.set('n', '<leader>?',  builtin.help_tags, {})
vim.keymap.set('n', '<leader>1',  builtin.find_files, {})
vim.keymap.set('n', '<leader>gt', builtin.git_files, {})
vim.keymap.set('n', '<leader>rf', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>tr', builtin.treesitter, {})
vim.keymap.set('n', '<leader>gr', function()
    builtin.grep_string({ search = vim.fn.input('Grep > ')})
end)

vim.keymap.set('n', '<leader>9',  function()
    local opts = {}
    opts.dir = '~/.config/nvim'
    opts.cncl_tkn = 'oajsdpok1j'
    find_files_in_dir(opts)
end)

vim.keymap.set('n', '<leader>ff',  function()
    local opts = {}
    opts.dir = nil
    opts.cncl_tkn = 'oajsdpok1j'
    find_files_in_dir(opts)
end)
