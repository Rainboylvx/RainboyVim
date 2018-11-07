"================== Default setting =====
"定义dictionary
if(has('win32'))
    let path=$VIM.'/RainboyVim'
else
    let path=$HOME.'/RainboyVim'
endif

"=================== gutentags ==================
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 默认不使能 手动使用
let g:gutentags_enabled =0

"=================== emmt   ==================
let g:user_emmet_expandabbr_key='<C-y><C-y>'

"=================== ale   ==================
let g:ale_linters = {
\   'cpp': ['gcc','cppcheck'],
\}
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_sign_column_always =1
"let g:ale_linters_explicit = 1
"let g:ale_completion_delay = 500
"let g:ale_echo_delay = 20
"let g:ale_lint_delay = 500
"let g:ale_echo_msg_format = '[%linter%] %code: %%s'
"let g:ale_lint_on_text_changed = 'normal'
"let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''


"=================== LeaderF ================

let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction!<cr>
noremap <M-n> :LeaderfBuffer<cr>
exec "set <M-n>=\en"
set ttimeout ttimeoutlen=100


noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0}
let g:Lf_DefaultMode = 'FullPath'

let g:Lf_NormalMap = {
	\ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
	\ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']],
	\ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
	\ "Tag":    [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
	\ "Function":    [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
	\ "Colorscheme":    [["<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>']],
	\ }

let g:Lf_WildIgnore = {
    \ 'dir': ['.git','.svn','node_modules'],
    \ 'file': []
    \ }

let g:Lf_MruWildIgnore = {
\ 'dir': ['.git','.svn','node_modules'],
\ 'file': []
\}

"=================== airline ================

"启用tabline
let g:airline#extensions#tabline#enabled = 1

"let g:airline#extensions#disable_rtp_load = 1
"let g:airline_extensions = ['branch', 'tabline']

"静态查错

let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#tabline#fnamemod = ':t'

"let g:airline#extensions#tabline#tab_min_count = 11

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_theme="badwolf" 

if(has('win32'))
    set encoding=utf-8
    "let g:Powerline_symbols="fancy"
    let g:airline_left_sep = "\u2b80" 
    let g:airline_left_alt_sep = "\u2b81" 
    let g:airline_right_sep = "\u2b82" 
    let g:airline_right_alt_sep = "\u2b83" 
    let g:airline_symbols.branch = "\u2b60" 
    let g:airline_symbols.readonly = "\u2b64" 
    let g:airline_symbols.linenr = "\u2b61"
    "设置顶部tabline栏符号显示"
    let g:airline#extensions#tabline#left_sep = "\u2b80" 
    let g:airline#extensions#tabline#left_alt_sep = "\u2b81"
else
    set encoding=utf-8
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''
endif

" 显示buffer 序号
let g:airline#extensions#tabline#buffer_idx_mode = 1
" 显示buffer 的名字
let g:airline#extensions#tabline#buffers_label = 'Buffer'

" 快捷键
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>p <Plug>AirlineSelectPrevTab
nmap <leader>n <Plug>AirlineSelectNextTab

"关闭当前buffer
nmap <leader>w :bw<enter>

"和最近的buffer
nmap <leader>t :b#<enter>

"sb n 分割
"

"=============== WMctrl全屏 ==============
" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
let g:fullscreen = 0
function! ToggleFullscreen()
    if g:fullscreen == 1
        let g:fullscreen = 0
        let mod = "remove"
    else
        let g:fullscreen = 1
        let mod = "add"
    endif
    call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
endfunction
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
if has("gui_running")
    autocmd VimEnter * call ToggleFullscreen()
endif    



"===================== NERDTree
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=26
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
" 

let NERDTreeIgnore=['node_modules$', '\~$','.git']
"============= ListToggle ============
let Tlist_Use_Right_Window = 1 " 在右侧使用taglist


"============= ListToggle ============
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'


"===========syntastic===========
let g:syntastic_error_symbol = 'E'
let g:syntastic_warning_symbol = 'W'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ycm_autoclose_preview_window_after_completion = 1
let g:syntastic_cpp_compiler = 'g++' 

"let g:syntastic_cpp_compiler_options = '-Wall'

let g:syntastic_javascript_checkers = ['jshint']

"============= YouCompleteMe ============
if(has('win32'))
    set tags+="E:/HackTools/MinGW/include/sys.tags"
else
    "let g:ycm_global_ycm_extra_conf="~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"
    let g:ycm_global_ycm_extra_conf="~/RainboyVim/extra/.ycm_extra_conf.py"
    " 引入 C++ 标准库tags
" location list 不一直打开
let g:ycm_always_populate_location_list = 0
" 开启 YCM 标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/usr/include/c++/4.8/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 使用omnifunc的cache 但是可以会造成vim迟钝
let g:ycm_cache_omnifunc=1
" 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1

" 自动关闭补全窗口
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
endif


"================= vim-signature
      let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "m<Space>",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "]`",
        \ 'GotoPrevSpotByPos'  :  "[`",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListBufferMarks'    :  "m/",
        \ 'ListBufferMarkers'  :  "m?"
        \ }

"============= ultisnipptes ==========
let g:UltiSnipsSnippetDirectories=[path.'/mysnippets']
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
"let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"   let g:ulti_expand_or_jump_res = 0 "default value, just set once
   "function! Ulti_ExpandOrJump_and_getRes()
     "call UltiSnips#ExpandSnippetOrJump()
     "return g:ulti_expand_or_jump_res
   "endfunction


   "inoremap <leader><tab> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0)?"":IMAP_Jumpfunc('', 0)<CR>



"====== MiniBufExplorer
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>


"----------nerdtree-git-plugin


"============ vim - table
let g:table_mode_corner="|"     "兼容Markdown Table

"============ easymotion
nmap s <Plug>(easymotion-s)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

"行模式
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

let g:EasyMotion_smartcase = 1

"============ wirldfire.vim
" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)
" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

"============ Vim markdown =========
let g:vim_markdown_frontmatter=1
let g:vim_markdown_math=0
let g:vim_markdown_conceal = 0
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_new_list_item_indent = 2

"============ wmgraphiz.vim
let g:WMGraphviz_outpt = 'png'

"============ Rainbow 括号
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'azure'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'darkblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

let g:rainbow_active = 1

"Pyclewn
let g:pyclewn_terminal = "xterm, -e"



"================== Markdown-preview
"let g:mkdp_path_to_chrome = "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe"
