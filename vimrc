set termguicolors
set nocompatible
set regexpengine=1
set history=100
let mapleader="\\"
let g:global_author = "Rainboy"
let g:global_email  = "rainboylvx@qq.com"


let g:coc_global_extensions = [
\ 'coc-ultisnips',
\ 'coc-json',
\ 'coc-tsserver',
\ 'coc-html',
\ 'coc-css',
\ 'coc-yaml',
\ 'coc-highlight',
\ 'coc-explorer',
\ 'coc-vetur',
\ 'coc-python'
\ ]

" ============ Plugin Manager ============
filetype off
let $PLUG_DIR = expand("$HOME/.vim/plugged")
call plug#begin($PLUG_DIR) " plug 安装地址

"----------管理插件----------
Plug 'Rainboylvx/RainboyVim'                                        " 
Plug 'kyazdani42/nvim-web-devicons'
Plug 'Yggdroot/indentLine',{'for':['c','cpp']}                      " 缩进参考线
Plug 'Rainboylvx/rSnip'                                             " noi code snippets
"Plug 'yianwillis/vimcdoc'                                           " 中文文档
Plug 'romainl/vim-cool'                                             " 搜索高亮
Plug 'thinca/vim-quickrun'                                          " 运行 Run commands quickly 更快
Plug 'ludovicchabant/vim-gutentags'                                 " ctags,gtags,暂时用不到

" Theme 主题
"Plug 'romgrk/doom-one.vim'                                         " doom 主题
"Plug 'romgrk/barbar.nvim'                                          " 与doom 主题 配合使用,显示buf 标签
Plug 'morhetz/gruvbox'                                              " gruvbox主题

Plug 'digitaltoad/vim-pug'                                          " pug模板
Plug 'vim-airline/vim-airline'                                      " airline
Plug 'vim-airline/vim-airline-themes'                               " airline themes
Plug 'Linfee/ultisnips-zh-doc'                                      " ultisnips-zh-doc
Plug 'SirVer/ultisnips'                                             " ultisnips
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Valloric/MatchTagAlways',{'for':['html','xml']}               " MatchTagAlways
Plug 'octol/vim-cpp-enhanced-highlight'                             " cpp 代码高亮
Plug 'wannesm/wmgraphviz.vim'                                       " graphviz :GraphvizShow
Plug 'Valloric/ListToggle'                                          " list windows(quickfix location-list) quick toggle
Plug 'vim-scripts/a.vim'                                            " .h .c 快速切换
Plug 'nathanaelkane/vim-indent-guides'                              " 代码缩进
Plug 'kshenoy/vim-signature'                                        " 书签
Plug 'Yggdroot/LeaderF',{ 'do': './install.sh' }                    " 
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                                             " fzf
Plug 'mattn/emmet-vim'                                              " expanding html abbreivtion
Plug 'danro/rename.vim'                                             " 重命名 很好用
Plug 'Lokaltog/vim-easymotion'                                      " 快速移动
Plug 'junegunn/vim-easy-align'                                      " 文本对齐
Plug 'scrooloose/nerdcommenter'                                     " 代码注释

" 被 coc-explorer 取代
"Plug 'scrooloose/nerdtree',{ 'on':  'NERDTreeToggle' }              " 工程文件浏览
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Plug 'ryanoasis/vim-devicons'                                       " Adds filetype glyphs (icons) to various vim plugins.
Plug 'majutsushi/tagbar',{ 'on':  'TagbarToggle' }                  " tagbar
Plug 'liuchengxu/vista.vim'                 "View and search LSP symbols, tags in Vim/NeoVim.
Plug 'vim-scripts/taglist.vim'                                      " taglist
Plug 'dhruvasagar/vim-table-mode',{ 'on':  'TableModeToggle' }      " table 生成
Plug 'preservim/vim-markdown',{'for':'markdown'}                  " markdown 语法高亮
Plug 'Chiel92/vim-autoformat',{'for':['typescript','javascript']}   " 自动格式化
Plug 'gcmt/wildfire.vim'                                            " 括号内选择
"Plug 'luochen1990/rainbow'                                          " 彩虹括号
Plug 'vim-scripts/DrawIt'                                           " Ascii 画图
Plug '907th/vim-auto-save',{'for':['markdown','cpp']}               " 自动保存
Plug 'leafgarland/typescript-vim',{'for':'typescript'}              " typescript 高亮
Plug 'hotoo/pangu.vim',{'for':'markdown'}                           " 自动格式化、标准化中文排版。 使用 :pangu
Plug 'wincent/terminus'                                             "Cursor shape,Improved mouse support
Plug 'mhinz/vim-startify'
"Plug 'caenrique/nvim-toggle-terminal'
Plug 'ap/vim-css-color',{'for':['scss','css']}                      "Preview colours in source code while editing
Plug 'voldikss/vim-floaterm'                                        "floaterm
"Plug 'skywind3000/vim-terminal-help'

Plug 'lilydjwg/fcitx.vim',{ 'branch': 'fcitx4' }
Plug 'junegunn/goyo.vim'                " 使文字变成 文字中央


"Plug 'mattn/webapi-vim'                            " 在vim中使用 webapi, 以后可以开发一个OJ上传代码的插件
"Plug 'mattn/pastebin-vim'
"Plug 'skywind3000/gutentags_plus'
"Plug 'Xuyuanp/nerdtree-git-plugin'        "
"Plug 'posva/vim-vue'                      "vue高亮
"Plug 'Quramy/tsuquyomi',{'for':'typescript'}
"Plug 'jason0x43/vim-js-indent',{'for':['typescript','javascript']}

call plug#end()

syntax on
syntax enable
filetype on
filetype plugin on
filetype plugin indent on        " 必须 加载vim自带和插件相应的语法和文件类型相关脚本


let g:pastebin_api_dev_key = ""
