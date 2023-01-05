local fn = vim.fn


_G.Util = {}

Util.trim_whitespace = function()
    vim.cmd [[
        let l:save = vim.winsaveview()
        keeppatterns %s/\s\+$//e
        call vim.winrestview(l:save)
    ]]
end

