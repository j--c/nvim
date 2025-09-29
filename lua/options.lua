------------------------------------------------------------------------------
-- Global options not affiliated with a plugin
------------------------------------------------------------------------------
-- Leaders
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Tab stops etc
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true

-- Wrapping
vim.opt.textwidth = 0
vim.opt.wrapmargin = 10

-- List chars
vim.opt.listchars = {
    trail = "-",
    eol = "↲",
    tab = "» ",
    space = "·",
}

-- Folding
vim.opt.foldmethod = "indent"

-- Diagnostics
vim.diagnostic.config({ virtual_text = true })
