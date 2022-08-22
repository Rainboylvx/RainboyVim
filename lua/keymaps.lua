local opts = { noremap = true, silent = true }

local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

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
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Better motion

--
keymap("i", "<C-l>", "<esc>A", opts)
keymap("i", "<C-h>", "<esc>I", opts)
keymap('n', '<A-j>', ':m .+1<cr>==',opts)   -- move current line down
keymap('n', '<A-k>', ':m .-2<cr>==',opts)   -- move current line up

-- normal A
-- normal 0i

-- Better copy

keymap("i", "<leader>v", '<esc>"+p', opts)
keymap("n", "<leader>v", '"+p', opts)
keymap("v", "<leader>v", '"+p', opts)
keymap("v", "<leader>c", '"+y', opts)
keymap("n", "<leader>a", 'ggVG"+y', opts)

-- 测试 
-- keymap('i',"<c-l>",'<c-r>=ralgo#RalgoExpand()<cr>',opts)

