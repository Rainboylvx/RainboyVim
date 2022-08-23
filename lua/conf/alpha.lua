local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
"(_____ \\      (_)     | |                ",
" _____) )_____ _ ____ | |__   ___  _   _ ",
"|  __  /(____ | |  _ \\|  _ \\ / _ \\| | | |",
"| |  \\ \\/ ___ | | | | | |_) ) |_| | |_| |",
"|_|   |_\\_____|_|_| |_|____/ \\___/ \\__  |",
"                                  (____/ ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

--alpha.setup(dashboard.opts)
alpha.setup(require'alpha.themes.startify'.config)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
