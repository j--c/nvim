-- [[ lspconfig config ]]


-----------------------[[
--       setup         --
-----------------------]]


local handlers =  {
    ["textDocument/hover"] =  vim.lsp.with(
        vim.lsp.handlers.hover, {border = {
            {"╭", "FloatBorder"},
            {"─", "FloatBorder"},
            {"╮", "FloatBorder"},
            {"│", "FloatBorder"},
            {"╯", "FloatBorder"},
            {"─", "FloatBorder"},
            {"╰", "FloatBorder"},
            {"│", "FloatBorder"}
        }}
    )
}

local on_attach = function(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
end


local servers = {'pyright'}
for num, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        handlers = handlers,
        on_attach = on_attach,
        flags = {
            -- This will be the default in neovim 0.7+
            debounce_text_changes = 150,
        }
    }
end


-----------------------[[
--       keymaps       --
-----------------------]]


vim.keymap.set(
    'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>',
    {noremap=true, silent=false}
)

vim.keymap.set(
    'n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>',
    {noremap=true, silent=false}
)
