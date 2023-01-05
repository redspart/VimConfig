local Worktree = require("git-worktree")
local Job = require("plenary.job")
local Path = require("plenary.path")

Worktree.on_tree_change(function(op, path, upstream)

    if op == Worktree.Operations.Switch then
        local submodule = Job:new({
            "git", "submodule", "update"
        })
    end

    if op == Worktree.Operations.Create then
        local submodule = Job:new({
            "git", "submodule", "update"
        })
    end
end)
