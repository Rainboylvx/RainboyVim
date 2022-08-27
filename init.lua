local ends_with = require("utils").ends_with

--vim.cmd([[
--
--set foldlevel=20
--set foldmethod=expr
--set foldexpr=nvim_treesitter#foldexpr()
--
--]])
--
--require'nvim-treesitter.configs'.setup {
--  ensure_installed = "cpp",
--  highlight = {
--    enable = true,
--  },
--}

require("settings")
require("keymaps")
require("plugins")

--plugins config
require("conf")


-- 加载vim后缀的配置
-- https://github.com/Martins3/My-Linux-Config/blob/master/nvim/init.vim
local vim_config_dir = vim.fn.stdpath('config') .. '/vim'
for _, fname in pairs(vim.fn.readdir(vim_config_dir)) do
    if ends_with(fname,'.vim') then
        vim.cmd("source " .. vim_config_dir .. '/' .. fname)
    end
end
