
require"nvim-treesitter.configs".setup {
    ensure_installed = {"c", "rust", "lua", "python"},
    highlight = { enabled = true},
    indent = { enabled = true }
}

require("redspart.sets")
require("redspart.lsp")
require("redspart.compe-config")
require("redspart.telescope")
require("redspart.git-worktree")
require("redspart.rust")
require("redspart.mappings")
