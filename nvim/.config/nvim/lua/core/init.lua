require "nvim-treesitter.configs".setup {
    ensure_installed = { "c", "rust", "lua", "python" },
    highlight = { enabled = true },
    indent = { enabled = true }
}

require("core.sets")
require("core.lsp")
require("core.compe-config")
require("core.telescope")
require("core.git-worktree")
require("core.rust")
require("core.mappings")
require("core.autos")
