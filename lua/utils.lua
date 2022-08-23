local M = {}
local opts = { noremap = true, silent = true }

M.term_opts = { silent = true }
M.keymap = function (mode,mapkey,action)
    vim.api.nvim_set_keymap(mode,mapkey,action,opts)
end

M.keymap_buff = function (mode,mapkey,action)
    vim.api.nvim_buf_set_keymap(0,mode,mapkey,action,opts)
end


return M
