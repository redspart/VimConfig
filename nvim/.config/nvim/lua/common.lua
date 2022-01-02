local M = {}

function M.get_path(str, sep)
    -- https://stackoverflow.com/questions/9102126/lua-return-directory-path-from-path
    sep=sep or '/'
    return str:match("(.*"..sep..")")
end

return M
