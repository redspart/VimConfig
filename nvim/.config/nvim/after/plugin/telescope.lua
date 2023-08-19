local Remap = require("core.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", function()
    require("telescope.builtin").find_files()
end)

nnoremap("<Leader>pf", function()
    require("telescope.builtin").find_files()
end)

nnoremap("<leader>ps", function()
    require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ") })
end)

nnoremap("<leader><leader>ps", function()
    require("telescope.builtin").live_grep()
end)

nnoremap("<leader>tt", function()
    require("telescope.builtin").help_tags()
end)

nnoremap("<leader>tb", function()
    require("telescope.builtin").buffers()
end)

-- Custom goTO
nnoremap("<leader>dot", function()
    require("core.telescope").search_dotfiles({ dots = vim.env.MYVIMRC })
end)

-- Git
nnoremap("<leader>gc", function()
    require("core.telescope").git_branches()
end)

-- worktrees
nnoremap("<leader>gw", function()
    require("telescope").extensions.git_worktree.git_worktrees()
end)
nnoremap("<leader>gm", function()
    require("telescope").extensions.git_worktree.create_git_worktree()
end)
