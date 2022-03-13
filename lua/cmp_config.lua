-- [[ cmp config ]]


-----------------------[[
--       setup         --
-----------------------]]


local cmp = require "cmp"
cmp.setup {
    sources = {
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "buffer", keyword_length = 5 },
        { name = "nvim_lua" },
    }
}
