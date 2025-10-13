------------------------------------------------------------------------------
-- tokyonight.nvim configuration
------------------------------------------------------------------------------
-- return {
--     {
--       "folke/tokyonight.nvim",
--      lazy = false,
--       priority = 1000,
--       opts = {},
--       config = function() vim.cmd[[colorscheme tokyonight-night]] end
--     }
-- }

------------------------------------------------------------------------------
-- nightfox.nvim configuration
------------------------------------------------------------------------------
return {
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function() vim.cmd[[colorscheme nightfox]] end
    }
}
