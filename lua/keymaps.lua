------------------------------------------------------------------------------
-- Global keymaps not affiliated with a plugin
------------------------------------------------------------------------------
-- Move by display lines
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true})

-- Source current file
vim.api.nvim_set_keymap('n', '<leader>x', ':so %', {noremap = true})

-- Netrw
vim.api.nvim_set_keymap('n', '<leader>e', ':e .<cr>', {noremap = true})

-- Next buffer
vim.api.nvim_set_keymap('n', '<leader>b', ':bn<cr>', {noremap = true})

-- Delete buffer
vim.api.nvim_set_keymap('n', '<leader>d', ':bd<cr>', {noremap = true})

-- Vertical split
vim.api.nvim_set_keymap('n', '<leader>v', ':vsp<cr>', {noremap = true})

-- Horizontal split
vim.api.nvim_set_keymap('n', '<leader>h', ':sp<cr>', {noremap = true})

-- Next window
vim.api.nvim_set_keymap('n', '<leader>w', '<C-w>w', {noremap = true})

-- Close window
vim.api.nvim_set_keymap('n', '<leader>c', '<C-w>q', {noremap = true})

-- Folding
vim.api.nvim_set_keymap('n', '<space>', 'za', {noremap = true})
