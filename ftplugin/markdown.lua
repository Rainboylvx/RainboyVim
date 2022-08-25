local keymap = require('utils').keymap_buff
local o = vim.opt_local

keymap('i','`','``<Left>')
keymap('i','*','**<Left>')
--keymap('i','=','<c-g>u==========')
--keymap('i','==','=')

keymap('n','<leader>b','wbcw****<left><left><esc>p')


-- 上标
-- 下标
-- 删除
-- underline
keymap('i','_','__<Left>')

o.tabstop = 2
o.shiftwidth = 2
o.wrap = false
