local function buf_dir()
    local bufn = vim.api.nvim_get_current_buf()
    local file = vim.api.nvim_buf_get_name(bufn)
    return vim.fs.dirname(file)
end

return {
    -- root_dir = function(bufn)
    --     local file = vim.api.nvim_buf_get_name(bufn)
    --     return vim.fs.dirname(file)
    -- end
    root_dir = buf_dir()
}
