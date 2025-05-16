-------------------------------------------------
-- Netrw key maps
-------------------------------------------------
vim.keymap.set('n', '<leader>e', vim.cmd.Ex, {noremap=true, silent=false})


-------------------------------------------------
-- Buffer key maps
-------------------------------------------------
vim.keymap.set('n', '<leader>b', ':bn<cr>', {noremap=true, silent=false})
vim.keymap.set('n', '<leader>d', ':bd<cr>', {noremap=true, silent=false})


-------------------------------------------------
-- Window key maps
-------------------------------------------------
vim.keymap.set('n', '<leader>w', '<c-w>w', {noremap=true, silent=false})
vim.keymap.set('n', '<leader>c', '<c-w>c', {noremap=true, silent=false})


-------------------------------------------------
-- Split key maps
-------------------------------------------------
vim.keymap.set('n', '<leader>v', ':vsplit<cr>', {noremap=true, silent=false})
vim.keymap.set('n', '<leader>h', ':sp<cr>', {noremap=true, silent=false})


-------------------------------------------------
-- Movement key maps
-------------------------------------------------
vim.keymap.set('n', '<right>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', '<left>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', '<up>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', '<down>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', 'k', 'gk', {noremap=true, silent=false})
vim.keymap.set('n', 'j', 'gj', {noremap=true, silent=false})


-------------------------------------------------
-- Editing key maps
-------------------------------------------------
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('x', '<leader>p', '"_dP')


-------------------------------------------------
-- Avoid Q key maps
-------------------------------------------------
vim.keymap.set('n', 'Q', '<nop>', {noremap=true, silent=false})


-------------------------------------------------
-- Folding key maps
-------------------------------------------------
vim.keymap.set('n', '<space>', 'za', {noremap=true, silent=false})


-------------------------------------------------
-- Source current file key maps
-------------------------------------------------
vim.keymap.set('n', '<leader>x', ':source %<cr>', {noremap=true, silent=false})


-------------------------------------------------
-- Terminal key maps
-------------------------------------------------
vim.keymap.set('t', '<Esc>', '<C-\\><C-N>', {noremap=true, silent=false})
