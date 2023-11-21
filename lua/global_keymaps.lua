-- mapleader
vim.g.mapleader = ","

-- netrw
vim.keymap.set('n', '<leader>1', vim.cmd.Ex)

-- hidden characters
vim.keymap.set('n', '<leader>0', ':set list!<cr>', {noremap=true, silent=false})

-- buffers
vim.keymap.set('n', '<leader>b', ':bn<cr>', {noremap=true, silent=false})
vim.keymap.set('n', '<leader>d', ':bd<cr>', {noremap=true, silent=false})

-- windows
vim.keymap.set('n', '<leader>w', '<c-w>w', {noremap=true, silent=false})
vim.keymap.set('n', '<leader>c', '<c-w>c', {noremap=true, silent=false})

-- splits
vim.keymap.set('n', '<leader>v', ':vsplit<cr>', {noremap=true, silent=false})
vim.keymap.set('n', '<leader>h', ':sp<cr>', {noremap=true, silent=false})

-- movement
vim.keymap.set('n', '<right>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', '<left>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', '<up>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', '<down>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', 'k', 'gk', {noremap=true, silent=false})
vim.keymap.set('n', 'j', 'gj', {noremap=true, silent=false})

-- editing
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('x', '<leader>p', '"_dP')

-- avoid Q
vim.keymap.set('n', 'Q', '<nop>', {noremap=true, silent=false})
