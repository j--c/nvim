------------------------------------------------------------------------------
-- Global options not affiliated with a plugin
------------------------------------------------------------------------------
-- Leaders
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

local set = vim.opt

-- Tab stops etc
set.expandtab = true
set.shiftwidth = 4
set.tabstop = 4

-- Line numbers
set.number = true
set.relativenumber = true

-- List chars
set.listchars = {
    trail = "-",
    eol = "↲",
    tab = "» ",
    space = "·",
}

-- Diagnostics
vim.diagnostic.config({ virtual_text = true })
