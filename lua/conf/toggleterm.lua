local keymap = require('utils').keymap
require("toggleterm").setup{
    size =  function(term)
        if term.direction == "horizontal" then
            return 35
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.5
        end
    end,
    direction = 'float',
}

vim.cmd([[
" set
autocmd! TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

autocmd! TermEnter term://*toggleterm#*
      \ tnoremap <silent><F4> <Cmd>exe v:count1 . "ToggleTerm"<CR>


" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm direction=\"float\""<CR>
"inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

]])

keymap('n','<F4>','<Cmd>exe v:count1 ."ToggleTerm direction=\\"vertical\\""<cr>')

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
