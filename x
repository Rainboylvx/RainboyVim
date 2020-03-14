diff --git a/dict/dot.dict b/dict/dot.dict
old mode 100644
new mode 100755
diff --git a/init.vim b/init.vim
index 14c48bc..986ecc5 100755
--- a/init.vim
+++ b/init.vim
@@ -148,9 +148,9 @@ set autoread                 " 自动重新加载外部修改内容
 "set showmatch                 " 在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
 set modelines=1                 " 当你想对某个文件进行特殊的设置而又不想影响其它文件，因此并不打算在
 set nowrapscan               " 搜索到文件两端时不重新搜索
-set nobackup                 " 不生成备份文件
-set nowritebackup             " ?
-set noswapfile                 " 不生成交换文件
+"set nobackup                 " 不生成备份文件
+"set nowritebackup             " ?
+"set noswapfile                 " 不生成交换文件
 
 
 " ---No surround sound
@@ -255,7 +255,7 @@ else
         set noimd
     set ttimeoutlen=0
     if len($TMUX) > 0
-        set term=screen-256color
+        "set term=screen-256color
         " set screen title to vim $PWD folder name - format 'v:folder'
         "set titlestring=v:%(%{fnamemodify(expand(\"$PWD\"),\":t\")}%)
         "set t_ts=k
diff --git a/install.md b/install.md
old mode 100644
new mode 100755
diff --git a/keymap.vim b/keymap.vim
index aaa6fa7..adb59ab 100755
--- a/keymap.vim
+++ b/keymap.vim
@@ -121,7 +121,7 @@ nmap <leader>v "+p
 vmap <leader>v "+p
 
 if exists("g:WSL")
-    nmap <leader>v :read !/mnt/c/Windows/System32/paste.exe <cr>i<bs><esc>l
+    nmap <leader>v :read !/mnt/c/Windows/System32/paste.exe <cr>
 endif
 
 " \bb                 按=号对齐代码 [Tabular插件]
diff --git a/mysnippets/koa/koa.snippets b/mysnippets/koa/koa.snippets
old mode 100644
new mode 100755
diff --git a/mysnippets/nodejs/dataGen.snippets b/mysnippets/nodejs/dataGen.snippets
old mode 100644
new mode 100755
diff --git a/mysnippets/rbook/base.snippets b/mysnippets/rbook/base.snippets
old mode 100644
new mode 100755
diff --git a/mysnippets/typescript.snippets b/mysnippets/typescript.snippets
old mode 100644
new mode 100755
diff --git a/mysnippets/vue.snippets b/mysnippets/vue.snippets
old mode 100644
new mode 100755
diff --git a/plug.conf.vim b/plug.conf.vim
index 0d466e1..ebaea41 100755
--- a/plug.conf.vim
+++ b/plug.conf.vim
@@ -116,16 +116,13 @@ let g:airline#extensions#gutentags#enabled = 1
 "let g:airline#extensions#disable_rtp_load = 1
 "let g:airline_extensions = ['branch', 'tabline']
 
-"静态查错
 
-let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
-let g:airline#extensions#tabline#show_buffers = 1
-let g:airline#extensions#tabline#show_tabs = 0
-let g:airline#extensions#tabline#buffer_nr_show = 1
-let g:airline#extensions#tabline#buffer_nr_format = '%s:'
-let g:airline#extensions#tabline#fnamemod = ':t'
 
-"let g:airline#extensions#tabline#tab_min_count = 11
+let g:airline#extensions#coc#enabled = 1
+let airline#extensions#coc#error_symbol = 'COC-:'
+let airline#extensions#coc#warning_symbol = 'COC-:'
+let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
+let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
 
 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
@@ -467,3 +464,9 @@ autocmd FileType dot execute 'setlocal dict+='.path.'/dict/'.&filetype.'.dict'
 "可以使用<c-n> 从字典里补全
 set complete+=k
 
+
+
+"==================== autosave
+let g:auto_save = 1 " enable AutoSave on Vim startup
+let g:auto_save_events = ["InsertLeave", "TextChanged"]
+
diff --git a/plug.vim b/plug.vim
index 453ab12..8dc2e8e 100755
--- a/plug.vim
+++ b/plug.vim
@@ -19,6 +19,19 @@ endif
 source $PLUG_DIR/plug.vim
 
 
+
+"==================== coc.nvim
+
+let g:coc_global_extensions = [
+\ 'coc-ultisnips',
+\ 'coc-json',
+\ 'coc-python',
+\ 'coc-tsserver',
+\ 'coc-html',
+\ 'coc-css',
+\ 'coc-yaml']
+
+
 "set rtp+=$VIM/RainboyVim
 call plug#begin($PLUG_DIR) " plug 安装地址
 
@@ -78,6 +91,7 @@ Plug 'lilydjwg/fcitx.vim'
 "Plug 'luochen1990/rainbow'                "彩虹括号
 
 Plug 'vim-scripts/DrawIt'                 "Ascii 画图
+Plug '907th/vim-auto-save'                  " 自动保存
 
 Plug 'posva/vim-vue'                      "vue高亮
 ""Plugin 'Yggdroot/indentLine'              "对齐
diff --git a/rb.vim b/rb.vim
index 8b24aaf..df8df62 100755
--- a/rb.vim
+++ b/rb.vim
@@ -1,6 +1,6 @@
 "================== Rainboy Vim ==================
 
-let g:WSL=1
+"let g:WSL=1
 
 runtime! debian.vim
 
diff --git a/readme.md b/readme.md
index a30b10b..c8f9c18 100755
--- a/readme.md
+++ b/readme.md
@@ -54,3 +54,15 @@ pacman -S clang cmake
  - 安装 `node.js`
  - 安装 `yarn`
  - 安装 `yarn global add typescript typescript-formatter`
+
+## coc.nvim
+
+需要安装的插件
+
+```
+sudo pacman -S yarn node ctags
+yarn add tsserver ?
+
+## coc-python
+sudo pip install pylint jedi # 语法检查,补全server
+```
diff --git a/script.vim b/script.vim
old mode 100644
new mode 100755
diff --git a/tags b/tags
old mode 100644
new mode 100755
