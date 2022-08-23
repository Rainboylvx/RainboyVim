local keymap = require('utils').keymap

local term_opts = { silent = true }

-- Map <leader> to space
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'
-- Modes normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t", command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Better motion

--
keymap("i", "<C-l>", "<esc>A")
keymap("i", "<C-h>", "<esc>I")
keymap('n', '<A-j>', ':m .+1<cr>==')   -- move current line down
keymap('n', '<A-k>', ':m .-2<cr>==')   -- move current line up

-- normal A
-- normal 0i

-- Better copy

keymap("i", "<leader>v", '<esc>"+p')
keymap("n", "<leader>v", '"+p')
keymap("v", "<leader>v", '"+p')
keymap("v", "<leader>c", '"+y')
keymap("n", "<leader>a", 'ggVG"+y')

-- 测试 
-- keymap('i',"<c-l>",'<c-r>=ralgo#RalgoExpand()<cr>',opts)

-- auto pairs
keymap('i','\'','\'\'<Left>')
keymap('i','"','""<Left>')
keymap('i','{','{}<Left>')
keymap('i','(','()<Left>')
