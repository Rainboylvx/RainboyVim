local M = {}
local opts = { noremap = true, silent = true }

M.term_opts = { silent = true }
M.keymap = function (mode,mapkey,action)
    vim.api.nvim_set_keymap(mode,mapkey,action,opts)
end

M.keymap_buff = function (mode,mapkey,action)
    vim.api.nvim_buf_set_keymap(0,mode,mapkey,action,opts)
end

M.ends_with = function(str, ending)
  return ending == "" or str:sub(- #ending) == ending
end


return M
