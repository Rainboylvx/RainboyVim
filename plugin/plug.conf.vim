"================== Default setting =====
if(has('win32'))
    let path=$VIM.'/RainboyVim'
else
    let path=$HOME.'/RainboyVim'
endif
"=================== vim-cool ==================
let g:CoolTotalMatches = 1
"=================== vim-cool end ==================



""=================== gutentags ==================
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
"
set statusline+=%{gutentags#statusline()}
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

"=================== LeaderF ================

let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
" 函数列表
imap <c-f> <esc>:LeaderfFunction<cr>
imap <c-b> :LeaderfBuffer<cr>


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
            \ 'dir': ['.git','.svn','node_modules','.ccls-cache'],
            \ 'file': []
            \ }

let g:Lf_MruWildIgnore = {
            \ 'dir': ['.git','.svn','node_modules','.vscode','dist'],
            \ 'file': []
            \}

"=================== airline ================

"启用tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#gutentags#enabled = 1

"let g:airline#extensions#disable_rtp_load = 1
"let g:airline_extensions = ['branch', 'tabline']



let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'COC-:'
let airline#extensions#coc#warning_symbol = 'COC-:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

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
map <F2> :NERDTreeToggle<CR>

let NERDTreeIgnore=['node_modules$', '\~$','^\.','^dist$']

"============= ListToggle ============
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

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
let g:UltiSnipsSnippetDirectories=["UltiSnips","mysnippets"]
"" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsExpandTrigger="<leader><tab>"
""let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
""let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

""   let g:ulti_expand_or_jump_res = 0 "default value, just set once
""function! Ulti_ExpandOrJump_and_getRes()
""call UltiSnips#ExpandSnippetOrJump()
""return g:ulti_expand_or_jump_res
""endfunction


""inoremap <leader><tab> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0)?"":IMAP_Jumpfunc('', 0)<CR>


"============ vim - table
let g:table_mode_corner="|"     "兼容Markdown Table
nmap <Leader>tm :TableModeToggle<cr>



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
"diable ge map
map <Plug> <Plug>Markdown_OpenUrlUnderCursor
let g:vim_markdown_frontmatter=1
let g:vim_markdown_math=0
let g:vim_markdown_conceal = 0
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_new_list_item_indent = 2
set conceallevel=0

"============ wmgraphiz.vim
let g:WMGraphviz_outpt = 'png'

"============ Rainbow 括号
	let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['none', 'LightBlue','lightyellow', 'lightcyan' ],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'nerdtree': 0,
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

let g:rainbow_active = 1

"Pyclewn
let g:pyclewn_terminal = "xterm, -e"


"================== typescript 相关
"let g:typescript_indent_disable = 0


"================== auto format
"au BufWrite *.ts :Autoformat
"noremap <F3> :Autoformat<CR>

"================== tagbar
"au BufWrite *.ts :Autoformat
noremap <F3> :TagbarToggle<CR>
let g:tagbar_sort             = 0 " tags sorted by order in the file
let g:tagbar_help_visibility  = 0 " dot not show help
let g:tagbar_show_linenumbers = -1
"let g:tagbar_show_data_type = 1
"let g:tagbar_width=26


"======== indentLine
"let g:indentLine_setConceal = 0
"let g:indentLine_setColors = 0
"let g:indentLine_color_term = 100
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_color_gui = '#A4E57E'
"let g:indentLine_bgcolor_gui = '#FF5F00'
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char_list = ['¦', '┆', '┊']

"==================== 
autocmd FileType pug setlocal shiftwidth=2 softtabstop=2 expandtab

"定义dictionary
" know at https://vim.fandom.com/wiki/Dictionary_completions
autocmd FileType dot execute 'setlocal dict+='.path.'/dict/'.&filetype.'.dict'
"可以使用<c-n> 从字典里补全
set complete+=k



"==================== autosave
let g:auto_save = 1 " enable AutoSave on Vim startup
let g:auto_save_events = ["InsertLeave", "TextChanged"]

"==================== vim-easy-align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)



"============= coc.nvim ============
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"inoremap <silent><expr> <Tab>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "<leader><tab>" :
      "\ coc#refresh()
      ""\ "<leader><tab>"

"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
""Use <cr> to confirm completion
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


"inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'


" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
"============= coc.nvim end  ============

"============= devicons ============
let g:webdevicons_enable = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
"============= devicons end  ============


"============= startify =============
let g:startify_custom_header = [
        \'================== RainboyVim by Rainboy =================='
        \ ]

""================== terminus =================="
let g:TerminusMouse=0 "disable mouse
