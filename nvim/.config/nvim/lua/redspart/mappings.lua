local function set_keymap(mode, from, to)
    local opts = { noremap = true, silent = false }
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

-- lsp
set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
set_keymap('n', "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
