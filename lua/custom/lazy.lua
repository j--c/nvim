-------------------------------------------------
-- Bootstrap lazy.nvim
-------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      	    { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end


-------------------------------------------------
-- Put the "lazypath" from above onto the runtimepath
-------------------------------------------------
vim.opt.rtp:prepend(lazypath)


-------------------------------------------------
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-------------------------------------------------
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"


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


-------------------------------------------------
-- Setup lazy.nvim
-------------------------------------------------
require("lazy").setup({
    spec = {
        -- import your plugins
        { import = "custom.plugins" },
    },
    -- Configure any other settings here. See the documentation for more details.
    -- automatically check for plugin updates
    checker = { enabled = true },
})
