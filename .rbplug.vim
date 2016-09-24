" ============ Rainboy Plugin Manager ============
" 设定 vundle 的参数
filetype off
" linux 和 windows 下不同的路径
if(has('win32'))
    set rtp+=$VIM/vimfiles/bundle/Vundle.vim
"    call vundle#rc('$VIM/vimfiles/bundle')
    call vundle#begin('$VIM/vimfiles/bundle/')
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

"----------管理插件----------
Plugin 'VundleVim/Vundle.vim'                    " 让vundle管理插件版本,必须
    
Plugin 'thinca/vim-quickrun'                   " 运行 Run commands quickly 更快

Plugin 'morhetz/gruvbox'                    "gruvbox主题

Plugin 'bling/vim-airline'                  "airline

Plugin 'vim-airline/vim-airline-themes'        "airline themes

Plugin 'SirVer/ultisnips'                   "ultisnips

Plugin 'iamcco/markdown-preview.vim'        "md preview


Plugin 'Valloric/YouCompleteMe'                "YCM
Plugin    'scrooloose/syntastic'                "syntastic
"Plugin 'Shougo/neocomplete.vim'            "YCM 对我来说太复杂了，相对简单的neo就好了
Plugin 'vim-scripts/a.vim'                    ".h .c 快速切换
Plugin 'nathanaelkane/vim-indent-guides'      "代码缩进
Plugin 'kshenoy/vim-signature'                "书签
Plugin 'majutsushi/tagbar'                    "tagbar

Plugin 'danro/rename.vim'                    "重命名 很好用
Plugin 'Lokaltog/vim-easymotion'            "快速移动
Plugin 'scrooloose/nerdcommenter'            " 代码注释

Plugin 'scrooloose/nerdtree'                " 工程文件浏览
Plugin 'Xuyuanp/nerdtree-git-plugin'        "


"Plugin 'scrooloose/syntastic'                "静态分析器
Plugin 'dhruvasagar/vim-table-mode'         "table 生成
Plugin 'plasticboy/vim-markdown'            "markdown 语法高亮
"Plugin 'suan/vim-instant-markdown'          "markdown 实时渲染,使用失败
"Plugin 'shime/vim-livedown'

Plugin 'Shougo/vimproc.vim'                 "vim shell
Plugin 'Shougo/vimshell.vim'

"Plugin 'vim-scripts/AutoComplPop'           "自动弹出 del!

Plugin 'gcmt/wildfire.vim'                  "括号内选择
Plugin 'lilydjwg/fcitx.vim'
Plugin 'luochen1990/rainbow'                "彩虹括号

Plugin 'vim-scripts/DrawIt'                 "Ascii 画图

Plugin 'larrupingpig/vimgdb-for-vim7.4'     "vimgdb

Plugin 'othree/html5.vim'                   "html5 complete
Plugin 'posva/vim-vue'                   "vue高亮
Plugin 'Yggdroot/indentLine'                   "对齐

if(!has("win32"))
Plugin 'ryanoasis/vim-devicons'                "nerd-font
endif

call vundle#end()                " 必须
syntax on
syntax enable
filetype on
filetype plugin on
filetype plugin indent on        " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
