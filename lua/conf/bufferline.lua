local keymap = require('utils').keymap
require("bufferline").setup{
    options = {
        mode = "buffers",
        numbers = "both",
        close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
        -- NOTE: this plugin is designed with this icon in mind,
        -- and so changing this is NOT recommended, this is intended
        -- as an escape hatch for people who cannot bear it for whatever reason
        --
        --https://github.com/akinsho/bufferline.nvim/issues/524
        indicator = {
            style = 'icon',
            icon = '▎',
        },
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        separator_style = "slant",
    }
}

keymap('n','<leader>1','<Cmd>BufferLineGoToBuffer 1<CR>')
keymap('n','<leader>2','<Cmd>BufferLineGoToBuffer 2<CR>')
keymap('n','<leader>3','<Cmd>BufferLineGoToBuffer 3<CR>')
keymap('n','<leader>4','<Cmd>BufferLineGoToBuffer 4<CR>')
keymap('n','<leader>5','<Cmd>BufferLineGoToBuffer 5<CR>')
keymap('n','<leader>6','<Cmd>BufferLineGoToBuffer 6<CR>')
keymap('n','<leader>7','<Cmd>BufferLineGoToBuffer 7<CR>')
keymap('n','<leader>8','<Cmd>BufferLineGoToBuffer 8<CR>')
keymap('n','<leader>9','<Cmd>BufferLineGoToBuffer 9<CR>')
keymap('n','<leader>$','<Cmd>BufferLineGoToBuffer -1<CR>')
keymap('n','<leader>[b','<Cmd>BufferLineCycleNext<CR>')
keymap('n','<leader>b]','<Cmd>BufferLineCyclePrev<CR>')
keymap('n','<leader>b]','<Cmd>BufferLineCyclePrev<CR>')
keymap('n','<leader>p','<Cmd>BufferLinePick<CR>')
