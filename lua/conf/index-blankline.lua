vim.opt.termguicolors = true
--vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
vim.cmd [[

    ""highlight IndentBlanklineContextChar guifg=#ead6b0 gui=nocombine
    highlight IndentBlanklineContextChar guifg=#ADAF26 gui=nocombine
    highlight IndentBlanklineContextStart guisp=#ADAF26 gui=underline

]]


vim.cmd [[highlight IndentBlanklineContextSpaceChar guifg=#00FF00 gui=nocombine]]

--vim.g.indent_blankline_char_list = {'|', '|','¦', '┆', '┊'}

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    char = '│',
    show_current_context = true,
    show_current_context_start = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
    },
}

