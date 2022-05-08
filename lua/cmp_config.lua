-- [[ cmp config ]]


-----------------------[[
--       setup         --
-----------------------]]


local cmp = require "cmp"
cmp.setup {
    snippet = {
      -- REQUIRED - you must specify a snippet engine
        expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" },
        { name = "buffer"},
        { name = "nvim_lua" },
    }
}
