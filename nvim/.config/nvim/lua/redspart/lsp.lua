-- Helpful from:
    -- https://www.chrisatmachine.com/Neovim/28-neovim-lua-development/
USER = vim.fn.expand("$USER")

local sumneko_root_path = ""
local sumneko_path = ""

if vim.fn.has("mac") == 1 then
    sumneko_root_path = "/Users/" .. USER .. "/lua-language-server"
    sumneko_path = sumneko_root_path .. "/bin/macOS/lua-language-server"
elseif vim.fn.has("unix") == 1 then
    sumneko_root_path = "/home/" .. USER .. "/language-servers/lua-langauge-server"
    sumneko_path = sumneko_root_path .. "/bin/Linux/lua-langauge-server"
end

require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                },
            },
        },
    },
}
