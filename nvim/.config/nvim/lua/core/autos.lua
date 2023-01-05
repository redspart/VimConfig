vim.api.nvim_create_autocmd(
    { "BufWritePre" },
    { callback = function() vim.lsp.buf.format(nil, 200) end, pattern = { "*" } }
)
