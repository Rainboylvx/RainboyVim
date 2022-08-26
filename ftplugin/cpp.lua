local keymap = require('utils').keymap_buff

vim.api.nvim_buf_set_option(0, "commentstring", "// %s")

function _G.custom_fold_text()

    local line = vim.fn.getline(vim.v.foldstart)
    -- if vim.fn.match( line, '^[ \t]*\(\/\*\|\/\/\)[*/\\]*[ \t]*$' ) == 0 then
        
    -- end
    local sub = line
    local startbrace = vim.fn.substitute(line,'^.*{[ \t]*$', '{', 'g')
    if startbrace == '{' then
        local endline = vim.fn.getline(vim.v.foldend)
        local endbrace = vim.fn.substitute(endline, '^[ \t]*}\\(.*\\)$', '}', 'g')
        if endbrace == '}' then
            sub = string.gsub(endline,'^[ \t]*}(.*)$','...}%1')
        end
    end
    local lineNum = vim.v.foldend - vim.v.foldstart + 1
    local info = ' ' .. lineNum .. ' lines'
    local number_opt = 0
    if vim.opt.number:get() then
        number_opt = 1
    end
    -- local num_w = vim.opt.foldcolumn:get() + number_opt * vim.opt.numberwidth:get()
    local num_w = number_opt * vim.opt.numberwidth:get()
    local max_width = vim.fn.winwidth(0)
    if max_width > 80 then
        max_width = 80
    end
    local win_w =  max_width - num_w - 5 - 4
    local line_count = vim.v.foldend - vim.v.foldstart + 1
    line = " ⚡ " .. line .. sub
    local repeat_count = win_w - #line - #info
    -- print(repeat_count)

    if repeat_count > 0 then
        return line .. vim.fn['repeat'](' ',repeat_count) .. info
    end
        return line .. info
end

vim.opt.foldtext = 'v:lua.custom_fold_text()'

vim.cmd([[
augroup cpp_file_autogroup
    autocmd!
    autocmd BufWinLeave *.cpp,*.h,*.hpp mkview
    autocmd BufWinEnter *.cpp,*.h,*.hpp silent loadview 
augroup END
]])
