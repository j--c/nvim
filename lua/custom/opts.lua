-------------------------------------------------
-- Make sure to setup `mapleader` and `maplocalleader`
-------------------------------------------------
vim.g.mapleader = ','
vim.g.maplocalleader = '\\'


-------------------------------------------------
-- Invisible characters
-------------------------------------------------
vim.opt.listchars = {tab = '▸ ', eol = '¬', space = '␣'}


-------------------------------------------------
-- Tab stops, shift width, and expand tab
-------------------------------------------------
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4


-------------------------------------------------
-- Show relative line numbers and enable mouse
-------------------------------------------------
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
