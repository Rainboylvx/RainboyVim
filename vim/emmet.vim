" Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" https://stackoverflow.com/a/23035288/19867157
"inoremap <buffer> <tab> <plug>(emmet-expand-abbr)
autocmd BufNewFile,BufRead *.html inoremap <buffer> <tab> <plug>(emmet-expand-abbr)
