------------------------------------------------------------------------------
-- mini.icons configuration
------------------------------------------------------------------------------
return {
    {
        'nvim-mini/mini.nvim', version = false,
        config = function() 
            require("mini.icons").setup({style='ascii'})
        end 
    }
}
