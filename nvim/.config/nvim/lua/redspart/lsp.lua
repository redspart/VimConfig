local nvim_lsp = require('lspconfig')

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


nvim_lsp['sumneko_lua'].setup {
    cmd = {sumneko_path, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            }
        }
    }
}

nvim_lsp['efm'].setup {
    cmd = {"efm-langserver"};
    init_options = {documentFormatting = true},
    filetypes = {"lua", "python", "cpp", "rs"},
    settings = {
        rootMarkers = {".git/"}
    }
}

nvim_lsp['rust_analyzer'].setup {
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
}


local servers = {'jedi_language_server', 'tsserver', 'ansiblels', 'terraformls'}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup{}
end
