------------------------------------------------------------------------------
-- Mini.Statusline configuration
------------------------------------------------------------------------------
return {
    {
        'echasnovski/mini.statusline',
        version = '*',
        config = function()
            require('mini.statusline').setup{ use_icons = true }
        end
    }
}
