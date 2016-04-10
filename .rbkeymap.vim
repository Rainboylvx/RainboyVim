" ctrl +s 保存
imap <c-s> <esc>:w<enter>a


" ======= 引号 && 括号自动匹配 ======= "

:inoremap ( ()<esc>i
:inoremap ) <c-r>=ClosePair(')')<cr>
:inoremap { {}<esc>i
:inoremap } <c-r>=ClosePair('}')<cr>
:inoremap [ []<esc>i
:inoremap ] <c-r>=ClosePair(']')<cr>
:inoremap " ""<esc>i
:inoremap ' ''<esc>i
:inoremap ` ``<esc>i
au FileType scheme,racket,lisp,clojure :inoremap ' '
au FileType scheme,racket,lisp,clojure :inoremap ` `
au FileType scheme,racket,lisp,clojure :inoremap * **<esc>i


function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf


" ======= 自定义快捷键 ======= "

" Ctrl +;			行尾加;
imap <a-i> <c-l>;

" Ctrl + ]            多选择跳转
nmap <c-]> g<c-]>
vmap <c-]> g<c-]>

" Ctrl + U            简化全能补全按键
imap <c-u> <c-x><c-o>

" Ctrl + H            光标移当前行行首[插入模式]、切换左窗口[Normal模式]
imap <c-h> <esc>I
map <c-h> <c-w><c-h>

" Ctrl + J            光标移下一行行首[插入模式]、切换下窗口[Normal模式]
imap <c-j> <esc><down>I
map <c-j> <c-w><c-j>

" Ctrl + K            光标移上一行行尾[插入模式]、切换上窗口[Normal模式]
imap <c-k> <esc><up>A
map <c-k> <c-w><c-k>

" Ctrl + L            光标移当前行行尾[插入模式]、切换右窗口[Normal模式]
imap <c-l> <esc>A
map <c-l> <c-w><c-l>

" Alt  + H            光标左移一格
imap <m-h> <left>

" Alt  + J            光标下移一格
imap <m-j> <down>

" Alt  + K            光标上移一格
imap <m-k> <up>

" Alt  + L            光标右移一格
imap <m-l> <right>

" \c                  复制至公共剪贴板
vmap <leader>c "+y

" \a                  复制所有至公共剪贴板
nmap <leader>a <esc>ggVG"+y<esc>

" \v                  从公共剪贴板粘贴
imap <leader>v <esc>"+p
nmap <leader>v "+p
vmap <leader>v "+p

" \bb                 按=号对齐代码 [Tabular插件]
nmap <leader>bb :Tab /=<cr>

" \bn                 自定义对齐    [Tabular插件]
nmap <leader>bn :Tab /

" \nt                 打开/关闭文件树窗口，在左侧栏显示 [NERDTree插件]
nmap <leader>nt :NERDTree<cr>

" \tl                 打开/关闭Tags窗口，在右侧栏显示 [Tagbar插件]
nmap <leader>tl :TagbarToggle<cr><c-w><c-l>

" \fe                 打开文件编码窗口，在右侧栏显示 [FencView插件]
nmap <leader>fe :FencView<cr>

" \mp                 生成Promptline脚本文件，用于个性化终端操作 [Promptline插件 ]
nmap <leader>mp :!rm ~/backup/.promptline<cr><esc>:PromptlineSnapshot ~/backup/.promptline airline<cr>

" \gi                 开启或关闭GitGutter [GitGutter插件]
nmap <leader>gi :GitGutterToggle<cr>:GitGutterSignsToggle<cr>:GitGutterLineHighlightsToggle<cr>

" \gd                 打开Git文件对比模式 [竖直] [GitGutter插件]
nmap <leader>gd :Gdiff<cr>

" \gs                 打开Git文件对比模式 [水平] [GitGutter插件]
nmap <leader>gs :Gsdiff<cr>

" \rb                 一键去除所有尾部空白
imap <leader>rb <esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>
nmap <leader>rb :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>
vmap <leader>rb <esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>

" \rm                 一键去除字符
imap <leader>rm <esc>:%s/<c-v><c-m>//g<cr>
nmap <leader>rm :%s/<c-v><c-m>//g<cr>
vmap <leader>rm <esc>:%s/<c-v><c-m>//g<cr>

" \rt                 一键替换全部Tab为空格
func! RemoveTabs()
    if &shiftwidth == 2
        exec '%s/   /  /g'
    elseif &shiftwidth == 4
        exec '%s/   /    /g'
    elseif &shiftwidth == 6
        exec '%s/   /      /g'
    elseif &shiftwidth == 8
        exec '%s/   /        /g'
    else
        exec '%s/   / /g'
    end
endfunc

imap <leader>rt <esc>:call RemoveTabs()<cr>
nmap <leader>rt :call RemoveTabs()<cr>
vmap <leader>rt <esc>:call RemoveTabs()<cr>

" \ra                 一键清理当前代码文件
nmap <leader>ra <esc>\rt<esc>\rb<esc>gg=G<esc>gg<esc>

" \th                 一键生成与当前编辑文件同名的HTML文件 [不输出行号]
imap <leader>th <esc>:set nonumber<cr>:set norelativenumber<cr><esc>:TOhtml<cr><esc>:w %:r.html<cr><esc>:q<cr>:set number<cr>:set relativenumber<cr>
nmap <leader>th <esc>:set nonumber<cr>:set norelativenumber<cr><esc>:TOhtml<cr><esc>:w %:r.html<cr><esc>:q<cr>:set number<cr>:set relativenumber<cr>
vmap <leader>th <esc>:set nonumber<cr>:set norelativenumber<cr><esc>:TOhtml<cr><esc>:w %:r.html<cr><esc>:q<cr>:set number<cr>:set relativenumber<cr>


" \ev                 编辑当前所使用的Vim配置文件
nmap <leader>ev <esc>:e $MYVIMRC<cr>

" \php                一键切换到PHP语法高亮
imap <leader>php <esc>:se ft=php<cr>li
nmap <leader>php <esc>:se ft=php<cr>

" \js                 一键切换到JavaScript语法高亮
imap <leader>js <esc>:se ft=javascript<cr>li
nmap <leader>js <esc>:se ft=javascript<cr>

" \css                一键切换到CSS语法高亮
imap <leader>css <esc>:se ft=css<cr>li
nmap <leader>css <esc>:se ft=css<cr>

" \html               一键切换到HTML语法高亮
imap <leader>html <esc>:se ft=html<cr>li
nmap <leader>html <esc>:se ft=html<cr>

"========== 有关Graphviz 的快捷键
"http://abruzzi.iteye.com/blog/1323064
autocmd BufRead *.dot nmap <F8> :w<CR>:!dot -Tpng -o %<.png % && start %<.png && exit<CR><CR>

autocmd BufRead *.dot nmap <F9> :w<CR>:!neato -n -Tpng -o %<.png % && start %<.png <CR><CR>
" 快捷键

autocmd BufRead *.dot imap ii <esc>oarrow<leader><Tab>
autocmd BufRead *.dot imap ij <esc>o-<leader><Tab>


"========== markdown 文件下的快捷键

" 加粗
autocmd BufRead *.md imap <c-b> ****<esc>hi

" code
autocmd BufRead *.md imap <c-c> ```<enter><esc>O
