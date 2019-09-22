" ============ Rainboy Plugin Manager ============
" 设定 vundle 的参数
filetype off
" linux 和 windows 下不同的路径
"if(has('win32'))
"set rtp+=$VIM/vimfiles/bundle/Vundle.vim
"call plug#begin('~/.vim/plugged') " plug 安装地址
"else
"set rtp+=$VIM/RainboyVim
"call plug#begin('$VIM/.vim/plugged') " plug 安装地址
"endif
"
let $PLUG_DIR = expand("$HOME/.vim/plugged")
if empty(glob(expand("$PLUG_DIR/plug.vim")))
    silent !curl -fLo $PLUG_DIR/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif
source $PLUG_DIR/plug.vim


"set rtp+=$VIM/RainboyVim
call plug#begin($PLUG_DIR) " plug 安装地址

"----------管理插件----------
Plug 'Yggdroot/indentLine',{'for':['c','cpp']}                " 缩进参考线
Plug 'Rainboylvx/rSnip'                   " noi code snippets
Plug 'yianwillis/vimcdoc'                 " 中文文档
Plug 'romainl/vim-cool'                   " 搜索高亮
Plug 'thinca/vim-quickrun'                " 运行 Run commands quickly 更快
"Plug 'ludovicchabant/vim-gutentags'       " ctags,gtags,暂时用不到
"Plug 'skywind3000/gutentags_plus'
Plug 'morhetz/gruvbox'                    " gruvbox主题
Plug 'digitaltoad/vim-pug'
Plug 'bling/vim-airline'                  " airline
Plug 'vim-airline/vim-airline-themes'     " airline themes
Plug 'Linfee/ultisnips-zh-doc'
Plug 'SirVer/ultisnips'                   " ultisnips
Plug 'iamcco/markdown-preview.vim'        " md preview
"Plug 'scrooloose/syntastic'              "静态分析器 加载太慢了
"Plug 'Valloric/YouCompleteMe',{'on':[]}             " YCM,延迟加载
"Plug 'Valloric/YouCompleteMe'             " YCM
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'mattn/emmet-vim'                    " html emmet
Plug 'Valloric/MatchTagAlways'
"Plug 'othree/html5.vim'
Plug 'octol/vim-cpp-enhanced-highlight'   " cpp 代码高亮
Plug 'wannesm/wmgraphviz.vim'             " graphviz :GraphvizShow
Plug 'Valloric/ListToggle'                " list windows(quickfix location-list) quick toggle
Plug 'vim-scripts/a.vim'                  ".h .c 快速切换
Plug 'nathanaelkane/vim-indent-guides'    "代码缩进
Plug 'kshenoy/vim-signature'              "书签
"Plug 'majutsushi/tagbar'                  "tagbar
Plug 'Yggdroot/LeaderF',{ 'do': './install.sh' }                  "tagbar
Plug 'mattn/emmet-vim'                    "expanding html abbreivtion
Plug 'danro/rename.vim'                   "重命名 很好用
Plug 'Lokaltog/vim-easymotion'            "快速移动
Plug 'scrooloose/nerdcommenter'           " 代码注释

Plug 'scrooloose/nerdtree'                " 工程文件浏览
Plug 'Xuyuanp/nerdtree-git-plugin'        "
"Plug 'vim-scripts/taglist.vim'            " taglist

Plug 'dhruvasagar/vim-table-mode',{'for':['markdown']}         "table 生成
Plug 'plasticboy/vim-markdown'            "markdown 语法高亮
"Plugin 'suan/vim-instant-markdown'         "markdown 实时渲染,使用失败
"Plugin 'shime/vim-livedown'

Plug 'Chiel92/vim-autoformat',{'for':['typescript','javascript']}              " 自动格式化

"Plug 'Shougo/vimproc.vim'                 "vim shell
"Plug 'Shougo/vimshell.vim'

"Plugin 'vim-scripts/AutoComplPop'          "自动弹出 del!

Plug 'gcmt/wildfire.vim'                  "括号内选择
Plug 'lilydjwg/fcitx.vim'
"Plug 'luochen1990/rainbow'                "彩虹括号

Plug 'vim-scripts/DrawIt'                 "Ascii 画图

Plug 'posva/vim-vue'                      "vue高亮
""Plugin 'Yggdroot/indentLine'              "对齐

if(!has("win32"))
    Plug 'ryanoasis/vim-devicons'                "nerd-font
endif


Plug 'leafgarland/typescript-vim',{'for':'typescript'}  " typescript 高亮
"Plug 'Quramy/tsuquyomi',{'for':'typescript'}
"Plug 'jason0x43/vim-js-indent',{'for':['typescript','javascript']}

call plug#end()
"call vundle#end()                " 必须

syntax on
syntax enable
filetype on
filetype plugin on
filetype plugin indent on        " 必须 加载vim自带和插件相应的语法和文件类型相关脚本