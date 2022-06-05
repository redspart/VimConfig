-- Idea gotten from here
-- https://github.com/elianiva/dotfiles/blob/master/nvim/.config/nvim/lua/bootstrap.lua
local jetpack_path = vim.fn.stdpath("data") .. "/site/pack/jetpack"
if vim.fn.empty(vim.fn.glob(jetpack_path)) == 1 then
    print("Cloning jetpack to " .. jetpack_path)
    vim.cmd(string.format([[
        execute "!git clone --depth 1 https://github.com/tani/vim-jetpack %s/src/vim-jetpack"
        execute "!mkdir %s/opt/"
        execute "!ln -s %s"
        ]], jetpack_path, jetpack_path, jetpack_path .. "/{src,opt}/vim-jetpack"))
end
