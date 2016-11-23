"============ Vim 的常规设定 ============

" ## 使vim表现的出windows 程序行为##
" So you can use
" @ CTRL+S save the file
" @ CTRL+C copy text
" @ CTRL+P paste text
" @ CTRL+X cut text
"behave mswin


"============================ 外观设定 ============================
set number                     " 开启行号显示
set relativenumber           " 开启相对行号
set copyindent                 " 复制的时候 缩进
set preserveindent             " ?

set expandtab                 " 将制表符扩展为空格
set tabstop=4                 " 设置编辑时制表符占用的空格
set shiftwidth=4             " 设置格式化时制表符占用的空格
set softtabstop=4             " 让vim把连续数量的制表符视为一个空格


"=========== Vim 主题相关 ===========
set background=dark
"set background=light
colorscheme gruvbox


" ---对部分语言设置单独的缩进
au FileType ruby,eruby,slim,coffee,jade,sh set shiftwidth=2
au FileType ruby,eruby,slim,coffee,jade,sh set tabstop=2


set autowrite                 " 档案一有更动就会自动存盘
set display=lastline          " 解决自动换行格式下, 如高度在折行之后超过窗口高度结果这一行看不到的问题  
set cursorline                 " 高亮当前 行/列
"set cursorcolumn             " 高亮当前 行/列
set ruler                     " 显示光标当前位置,逗号分隔
set noshowmode                 " 不显示当前操作模式

set guiheadroom=0 " Prefix GTK borders  边框设置

set list                     " 显示特殊字符，其中Tab使用高亮~代替，尾部空白使用高亮点号代替
set listchars=tab:\~\ ,trail:.

set laststatus=2            "显示状态栏(默认值为1, 无法显示状态栏)
 

" 禁止光标闪烁
set gcr+=n-v-c:blinkon0,i-ci:ver25-blinkon0
" 设置光标颜色
au InsertLeave * hi Cursor guibg=green
au InsertEnter * hi Cursor guibg=red

" 开启部分语法高亮的非默认特性
let g:cpp_class_scope_highlight           = 1  " 高亮C++ class scope
let g:cpp_experimental_template_highlight = 1  " 高亮C++ template functions
let g:go_auto_type_info                   = 0  " 关闭Go语言自动显示类型信息 [默认就是关闭的，此处用于方便需要时开启]
let g:go_def_mapping_enabled              = 0  " 关闭Go语言对gd的绑定
let g:go_highlight_operators              = 1  " 开启Go语言操作符高亮
let g:go_highlight_functions              = 1  " 开启Go语言函数名高亮
let g:go_highlight_methods                = 1  " 开启Go语言方法名高亮
let g:go_highlight_structs                = 1  " 开启Go语言结构体名高亮
let g:haskell_enable_quantification       = 1  " 开启Haskell高亮 forall
let g:haskell_enable_recursivedo          = 1  " 开启Haskell高亮 mdo and rec
let g:haskell_enable_arrowsyntax          = 1  " 开启Haskell高亮 proc
let g:haskell_enable_pattern_synonyms     = 1  " 开启Haskell高亮 pattern
let g:haskell_enable_typeroles            = 1  " 开启Haskell高亮 type roles
let g:haskell_enable_static_pointers      = 1  " 开启Haskell高亮 static
let g:python_highlight_all                = 1  " 开启Python的所有高亮




"============================ 行为设定 ============================

" ---编码设定
set fenc=utf-8
set encoding=utf-8
set fileencodings=cs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,mac
language messages zh_CN.utf-8
if has('win32')
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
endif


" ---缩进与高亮
set wrap                     " 显示折行
set autoindent                 " 自动缩排
set smartindent                 " 智能缩排 能识别 {  }
set smarttab                 " 智能tab
set cindent                     " 专为 C 程序代码而设
set linebreak                  " 不会把一个英文单字折成两个
set shiftround                 " 使用 >> 或 << 时， 依shiftwidth 调整宽度

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全
filetype indent on             " 自适应不同语言的智能缩进



" ---搜索
set gdefault                "行内替换 ?
"set hlsearch                "高亮搜索        
set incsearch                "实时搜索
set ignorecase                "搜索时大小写不敏感
set fileignorecase            "?
set showcmd                    "在状态列显示目前所执行的指令，未完成的指令片段亦会显示出来
set cmdheight=2                "状态列的行数，预设一行，建议设成两行
set whichwrap+=<,>,h,l        "h和l命令可以移出当前行



" ---Omni Complete Setting
set wildmenu                "vim 自身命令行 智能补全
set wildmode=longest,full
set completeopt=menu,menuone,longest
set completeopt+=preview
set switchbuf=useopen,usetab
set shortmess=a

set winaltkeys=no            "不阻止了所有与Alt 键有关的映射
set backspace=indent,eol,start     "设置backspace 的使用方式


" ---高级设定
" magic就是设置哪些元字符要加反斜杠哪些不用加的
" magic (\m)：除了 $ . * ^ 之外其他元字符都要加反斜杠
set magic
set lazyredraw                ""在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能。
set ttyfast                     " 表明使用的是快速终端连接?
set hidden                     " 允许在有未保存的修改时切换缓冲区
"set autochdir                 " 自动切换当前目录为当前文件所在的目录
set autoread                 " 自动重新加载外部修改内容
"set showmatch                 " 在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
set modelines=1                 " 当你想对某个文件进行特殊的设置而又不想影响其它文件，因此并不打算在
set nowrapscan               " 搜索到文件两端时不重新搜索
set nobackup                 " 不生成备份文件
set nowritebackup             " ?
set noswapfile                 " 不生成交换文件


" ---No surround sound
set noerrorbells            " 关闭错误信息响铃  
set novisualbell            " 关闭使用可视响铃代替呼叫  
set t_vb=                   " 置空错误铃声的终端代码

" ---折叠设定
set foldenable              " 开始折叠  
set foldmethod=syntax       " 设置语法折叠  
set foldcolumn=0            " 设置折叠区域的宽度  
setlocal foldlevel=1        " 设置折叠层数为 
set nofoldenable            " 启动Vim的时候关闭代码折叠

" misc settings
set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac


" 设定分割窗口的位置
set splitright                "右侧新建缓冲区
set splitbelow


" ---设定Undo文件
set undofile
if(has('win32'))
    set undodir=$VIM/vimfiles/undo
else
    set undodir=~/.vim/undo
endif
set viminfo+=!



" ---根据后缀名指定文件类型
au BufRead,BufNewFile *.h           setlocal ft=c
au BufRead,BufNewFile *.i           setlocal ft=c
au BufRead,BufNewFile *.m           setlocal ft=objc
au BufRead,BufNewFile *.di          setlocal ft=d
au BufRead,BufNewFile *.ss          setlocal ft=scheme
au BufRead,BufNewFile *.cl          setlocal ft=lisp
au BufRead,BufNewFile *.phpt        setlocal ft=php
au BufRead,BufNewFile *.inc         setlocal ft=php
au BufRead,BufNewFile *.sql         setlocal ft=mysql
au BufRead,BufNewFile *.tpl         setlocal ft=smarty
au BufRead,BufNewFile *.txt         setlocal ft=txt
au BufRead,BufNewFile *.log         setlocal ft=conf
au BufRead,BufNewFile hosts         setlocal ft=conf
au BufRead,BufNewFile *.conf        setlocal ft=nginx
au BufRead,BufNewFile http*.conf    setlocal ft=apache
au BufRead,BufNewFile php-fpm*.conf setlocal ft=dosini
au BufRead,BufNewFile *.ini         setlocal ft=dosini



"============================ GUI 界面设定 ============================
" 区分 GUI Vim 和 NVim
" 没有菜单 和 滚动条
if has("gui_running")
    if has('win32')         " 启动时自动最大化窗口
        "au GUIEnter * simalt ~x    
    endif
    winpos 300 5           " 指定窗口出现的位置，坐标原点在屏幕左上角
    set lines=45 columns=85 " 指定窗口大小，lines为高度，columns为宽度
    set guioptions+=c       " 使用字符提示框
    set guioptions-=e        " 标签
    set guioptions-=m        " 完全隐藏菜单
    set guioptions-=T        " 完全隐藏工具栏
    set guioptions-=L        " 左边的滚动条 
    set guioptions-=r        " 右边的滚动条 
    set guioptions-=b        " 隐藏底部滚动条
    set showtabline=0      " 隐藏Tab栏
    set go=                " 置空
    set guitablabel=        " 关闭GUI TAB
    set paste                " paste 模式 可以在插入模式下粘贴内容，不会有任何变形
    set mousemodel=popup_setpos
    set mouse-=a
    "set guitablabel=%M\ %t

    " 字体设定
    if(has('win32'))                         "字体设定 win  and ubuntu
		"set guifont =Monaco:h14
		"set guifont=Consolas_for_Powerline_FixedD:h14
		"set guifont=Anonymice\ Powerline:h14
    else
        "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 13
        " set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 13
        set guifont=Monospace\ 16
    endif	

    map <silent> <F1> :if &guioptions =~# 'T' <Bar>
                \set guioptions-=T <Bar>
                \set guioptions-=m <bar>
                \else <Bar>
                \set guioptions+=T <Bar>
                \set guioptions+=m <Bar>
                \endif<CR>
else
    set t_Co=256
    set showtabline=2
        set noimd
    set ttimeoutlen=0
    if len($TMUX) > 0
        " set screen title to vim $PWD folder name - format 'v:folder'
        set titlestring=v:%(%{fnamemodify(expand(\"$PWD\"),\":t\")}%)
        set t_ts=k
        set t_fs=\
        set title
    endif
endif
