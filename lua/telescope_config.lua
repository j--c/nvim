-- [[ telescope config ]]


-----------------------[[
--       setup         --
-----------------------]]


require('telescope').setup{
    defaults = {
        extensions = {
            fzy_native = {
                override_generic_sorter = true,
                override_file_sorter = true,
            },
            fzf_writer = {
                use_highlighter = false,
                minimum_grep_characters = 6,
            }
        }
    }
}
require('telescope').load_extension('file_browser')
require('telescope').load_extension('fzf')


-----------------------[[
--       keymaps       --
-----------------------]]


-- file browser
vim.keymap.set(
    'n', '<leader>tb', ':Telescope file_browser<cr>',
    {noremap=true, silent=false}
)

-- find files
vim.keymap.set(
    'n', '<leader>tf', ':Telescope find_files<cr>', 
    {noremap=true, silent=false}
)

-- find vim config files
vim.keymap.set(
    'n', '<leader>vi', ':Telescope find_files cwd=~/.config/nvim<cr>', 
    {noremap=true, silent=false}
)

-- git status
vim.keymap.set(
    'n', '<leader>tg', ':Telescope git_status<cr>',
    {noremap=true, silent=false}
)

-- git commits
vim.keymap.set(
    'n', '<leader>tc', ':Telescope git_commits<cr>',
    {noremap=true, silent=false}
)
