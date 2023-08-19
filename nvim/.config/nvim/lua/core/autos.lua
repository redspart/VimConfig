vim.api.nvim_create_autocmd(
    { "BufWritePre" },
    { callback = function() vim.lsp.buf.format(nil, 200) end, pattern = { "*" } }
)

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        require('go.format').goimport()
    end,
    group = format_sync_grp,
})
