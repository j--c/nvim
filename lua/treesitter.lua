-- [[treesitter config]]


-----------------------[[
--       setup         --
-----------------------]]


require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
	highlight = {
	    enable = true,
	    custom_captures = {
        },
	    additional_vim_regex_highlighting = false,
	},
}
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
