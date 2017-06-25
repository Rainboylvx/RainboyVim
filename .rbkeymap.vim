" ctrl +s 保存
imap <F2> <esc>:w<enter>a
imap <F3> <esc>:w<enter><esc>:shell<enter>
nmap <F3> :w<enter>:shell<enter>


" ======= 引号 && 括号自动匹配 ======= "

:inoremap ( ()<esc>i
:inoremap ) <c-r>=ClosePair(')')<cr>
:inoremap { {}<esc>i
:inoremap } <c-r>=ClosePair('}')<cr>
:inoremap [ []<esc>i
:inoremap ] <c-r>=ClosePair(']')<cr>
:inoremap " ""<esc>i
:inoremap ' ''<esc>i
":inoremap ` ``<esc>i
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

" Ctrl +;            行尾加;
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


"================== 窗口操作快捷键 ==================

" shift + K                窗口向上增加一行
map <s-k> <c-w>+

" shift + J              窗口向下增加一行
map <s-n> <c-w>-

" shift + h              窗口向左增加一行
map <s-h> <c-w><

" shift + l              窗口向右增加一行
map <s-l> <c-w>>


" ctrl + right        向右或向下方交换窗口
""unmap <c-left>
nmap <c-left> <c-w><c-r>

" ctrl + right 向左或向上方交换窗口
nmap <c-right> <c-w>R

" ctrl + up           让所有窗口调整至相同尺寸(平均划分)
map <c-up> <c-w>=

" ctrl + down         将当前窗口的宽度调到最大
nmap <c-down> :vertical resize<enter>

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
autocmd BufRead *.md imap <c-v> $$$$<esc>hi

" code
autocmd BufRead *.md imap <c-c> ```c<enter><esc>O


"=========== JavaScript下nodejs 编译
autocmd BufRead *.js inoremap <F8> <esc>:w<CR>:!node % <CR><CR>
autocmd BufRead *.js nnoremap <F8> :w<CR>:!node % <CR><CR>

"========================= cpp c 一键编译
"------------------------------------------------------------------------------
"  < 判断操作系统是否是 Windows 还是 Linux >
"------------------------------------------------------------------------------
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:iswindows = 0
endif
 
"------------------------------------------------------------------------------
"  < 判断是终端还是 Gvim >
"------------------------------------------------------------------------------
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif
 
"------------------------------------------------------------------------------
"  < 编译、连接、运行配置 >
"------------------------------------------------------------------------------
" F9 一键保存、编译、连接存并运行
map <F8> :call Run()<CR>
imap <F8> <ESC>:call Run()<CR>
 
" Ctrl + F9 一键保存并编译
map <c-F8> :call Compile()<CR>
imap <c-F8> <ESC>:call Compile()<CR>
 
" Ctrl + F10  编译并调试
map <c-F10> :call Gdb()<CR>
imap <c-F10> <ESC>:call Gdb()<CR>

let s:LastShellReturn_C = 0
let s:ShowWarning = 1

func! Compile()
    "保存
    exe ":w"
    
    "关闭cope
    exe ":ccl"
    exe ":update"

    "判断当前路径
    if expand("%:p:h")!=getcwd()
        echohl WarningMsg | echo "Fail to make! This file is not in the current dir! Press <F7> to redirect to the dir of this file." | echohl None
        return
    endif
    
    "文件后缀判断
    let sourcefileename=expand("%:t")
    if (sourcefileename=="" || (&filetype!="cpp" && &filetype!="c"))
        echohl WarningMsg | echo "Fail to make! Please select the right file!" | echohl None
        return
    endif

    "文件名中的空格
    let deletedspacefilename=substitute(sourcefileename,' ','','g')
    if strlen(deletedspacefilename)!=strlen(sourcefileename)
        echohl WarningMsg | echo "Fail to make! Please delete the spaces in the filename!" | echohl None
        return
    endif

    if &filetype=="c"
        if g:iswindows==1
            set makeprg=gcc\ -g\ -o\ %<.exe\ %
        else
            set makeprg=gcc\ -g\ -o\ %<\ %
        endif
    elseif &filetype=="cpp"
        if g:iswindows==1
            set makeprg=g++\ -g\ -o\ %<.exe\ %
        else
            set makeprg=g++\ -g\ -o\ %<\ %
        endif
        "elseif &filetype=="cs"
        "set makeprg=csc\ \/nologo\ \/out:%<.exe\ %
    endif

    
    "得到 应该生成的 filename 
    if(g:iswindows==1)
        let outfilename=substitute(sourcefileename,'\(\.[^.]*\)' ,'.exe','g')
        let toexename=outfilename
    else
        let outfilename=substitute(sourcefileename,'\(\.[^.]*\)' ,'','g')
        let toexename=outfilename
    endif

    "删除已经生成的 filename.exe 
    if filereadable(outfilename)
        if(g:iswindows==1)
            let outdeletedsuccess=delete(getcwd()."\\".outfilename)
        else
            let outdeletedsuccess=delete("./".outfilename)
        endif
        if(outdeletedsuccess!=0)
            set makeprg=make
            echohl WarningMsg | echo "Fail to make! I cannot delete the ".outfilename | echohl None
            return
        endif
    endif

    echohl WarningMsg | echo " compiling..." | echohl None
    silent make
    redraw!
    set makeprg=make
    "有没有编译错误
    if v:shell_error != 0
        let s:LastShellReturn_C = v:shell_error
    endif
    if g:iswindows
        if s:LastShellReturn_C != 0
            exe ":bo cope"
            echohl WarningMsg | echo " compilation failed" | echohl None
        else
            if s:ShowWarning
                exe ":bo cw"
            endif
            echohl WarningMsg | echo " compilation successful" | echohl None
        endif
    else
        if empty(v:statusmsg)
            echohl WarningMsg | echo " compilation successful" | echohl None
        else
            exe ":bo cope"
        endif
    endif
endfunc


func! Run()
    call Compile()
    if s:LastShellReturn_C != 0
        return
    endif
    execute "normal :"


    let sourcefileename=expand("%:t")
    if(g:iswindows==1)
        let outfilename=substitute(sourcefileename,'\(\.[^.]*\)' ,'.exe','g')
        let toexename=outfilename
    else
        let outfilename=substitute(sourcefileename,'\(\.[^.]*\)' ,'','g')
        let toexename=outfilename
    endif
    if filereadable(outfilename)
        if(g:iswindows==1)
            execute "!".toexename
        else
            execute "!./".toexename
        endif
    endif
    execute "copen"
endfunc

func! Gdb()
    call Compile()
    if s:LastShellReturn_C != 0
        return
    endif

    set makeprg = gdb
endfunc

