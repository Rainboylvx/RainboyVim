"        Rainboy vim
" 2015-12-16
" 使用source 命令来链接各个vim设定

"判定当前操作系统类型
if has("win32") || has("win32unix")
    let g:OS#name = "win"
    let g:OS#win = 1
    let g:OS#mac = 0
    let g:OS#unix = 0
elseif has("mac")
    let g:OS#name = "mac"
    let g:OS#mac = 1
    let g:OS#win = 0
    let g:OS#unix = 0
elseif has("unix")
    let g:OS#name = "unix"
    let g:OS#unix = 1
    let g:OS#win = 0
    let g:OS#mac = 0
endif
if has("gui_running")
    let g:OS#gui = 1
else
    let g:OS#gui = 0
endif

"设置用户路径
if g:OS#win
"    source $VIMRUNTIME/mswin.vim
"    behave mswin
    let $VIUMFILES = $VIM.'/vimfiles'
    let $HOME = $VIUMFILES
elseif g:OS#unix
    let $VIM = $HOME
    let $VIMFILES = $HOME.'~/.vim'
elseif g:OS#mac
    let $VIM = $HOME
    let $VIMFILES = $HOME.'~/.vim'
endif

if g:OS#win
	 " MyDiff 
	set diffexpr=MyDiff()
	function! MyDiff()
		  let opt = '-a --binary '
		  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
		  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
		  let arg1 = v:fname_in
		  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
		  let arg2 = v:fname_new
		  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
		  let arg3 = v:fname_out
		  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
		  let eq = ''
		  if $VIMRUNTIME =~ ' '
			if &sh =~ '\<cmd'
			  let cmd = '""' . $VIMRUNTIME . '\diff"'
			  let eq = '"'
			else
			  let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
			endif
		  else
			let cmd = $VIMRUNTIME . '\diff'
		  endif
		  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
	endfunction
endif

" Win平台下窗口全屏组件 gvimfullscreen.dll
" Alt + Enter 全屏切换
" Shift + t 降低窗口透明度
" Shift + y 加大窗口透明度
" Shift + r 切换Vim是否总在最前面显示
" Vim启动的时候自动使用当前颜色的背景色以去除Vim的白色边框
if has('gui_running') && has('gui_win32') && has('libcall')
    let g:MyVimLib = 'gvimfullscreen.dll'
    function! ToggleFullScreen()
        call libcall(g:MyVimLib, 'ToggleFullScreen', 1)
    endfunction

    let g:VimAlpha = 245
    function! SetAlpha(alpha)
        let g:VimAlpha = g:VimAlpha + a:alpha
        if g:VimAlpha < 180
            let g:VimAlpha = 180
        endif
        if g:VimAlpha > 255
            let g:VimAlpha = 255
        endif
        call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction

    let g:VimTopMost = 0
    function! SwitchVimTopMostMode()
        if g:VimTopMost == 0
            let g:VimTopMost = 1
        else
            let g:VimTopMost = 0
        endif
        call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
    endfunction
    "映射 Alt+Enter 切换全屏vim
    map <a-enter> <esc>:call ToggleFullScreen()<cr>
    "切换Vim是否在最前面显示
    nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
    "增加Vim窗体的不透明度
    nmap <s-t> <esc>:call SetAlpha(10)<cr>
    "增加Vim窗体的透明度
    nmap <s-y> <esc>:call SetAlpha(-10)<cr>
    " 默认设置透明
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'SetAlpha', g:VimAlpha)
endif

if g:OS#win == 1
" 一些基础的VIM设定
source $HOME/../RainboyVim/.rb.vim
" VIM忽略的文件夹 和 文件
source $HOME/../RainboyVim/.rbignore.vim

" - 插件管理 和插件设定
source $HOME/../RainboyVim/.rbplug.vim
source $HOME/../RainboyVim/.rbplug.conf.vim


source $HOME/../RainboyVim/.rbinit.vim

source $HOME/../RainboyVim/.rbkeymap.vim
else

source ~/RainboyVim/.rb.vim
source ~/RainboyVim/.rbignore.vim
source ~/RainboyVim/.rbplug.vim
source ~/RainboyVim/.rbplug.conf.vim
source ~/RainboyVim/.rbinit.vim
source ~/RainboyVim/.rbkeymap.vim
endif

if has("autocmd")  
    au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"  
    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"  
    au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"  
endif  
