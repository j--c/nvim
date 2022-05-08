-- [[ globals ]]


-----------------------[[
--     colorscheme     --
-----------------------]]


vim.cmd[[colorscheme nord]]


-----------------------[[
--      settings       --
-----------------------]]


vim.opt.background = 'dark'
vim.opt.listchars = {tab = '▸ ', eol = '¬', space = '␣'}
vim.opt.showmode = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.scrolloff = 8
vim.opt.showcmd = true
vim.opt.wildmenu = true
vim.opt.mouse = 'a'
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.ruler = true
vim.opt.showmatch = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.timeout = false
vim.opt.timeoutlen = 10
vim.opt.undofile = true
vim.bo.undofile = true
vim.opt.title = true
vim.opt.hidden = true
vim.opt.path = vim.opt.path + '.,**'
vim.opt.foldlevelstart = 1
vim.wo.colorcolumn = '80'
vim.wo.signcolumn = 'yes'


-----------------------[[
--       keymaps       --
-----------------------]]


-- mapleader
vim.g.mapleader = ","

-- source current file
vim.keymap.set('n', '<leader>s', ':source %<cr>', {noremap=true, silent=false})

-- hidden characters
vim.keymap.set('n', '<leader>0', ':set list!<cr>', {noremap=true, silent=false})

-- buffers
vim.keymap.set('n', '<leader>b', ':bn<cr>', {noremap=true, silent=false})
vim.keymap.set('n', '<leader>d', ':bd<cr>', {noremap=true, silent=false})

-- windows
vim.keymap.set('n', '<leader>w', '<c-w>w', {noremap=true, silent=false})
vim.keymap.set('n', '<leader>c', '<c-w>c', {noremap=true, silent=false})

-- movement
vim.keymap.set('n', '<right>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', '<left>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', '<up>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', '<down>', '<nop>', {noremap=true, silent=false})
vim.keymap.set('n', 'k', 'gk', {noremap=true, silent=false})
vim.keymap.set('n', 'j', 'gj', {noremap=true, silent=false})

-- splits
vim.keymap.set('n', '<leader>v', ':vsp<cr>', {noremap=true, silent=false})
vim.keymap.set('n', '<leader>h', ':sp<cr>', {noremap=true, silent=false})

-- folding
vim.keymap.set('n', '<space>', 'za', {noremap=true, silent=false})

-- terminal
vim.keymap.set('t', '<Esc>', '<c-\\><c-n>', {noremap=true, silent=false})

-- terminal / git
vim.keymap.set('t', '<leader>gc', 'git commit -m "', {noremap=true, silent=false})
