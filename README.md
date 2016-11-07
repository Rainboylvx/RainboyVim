# RainboyVim

###01 ubuntu 下安装vim74+vimgdb7.4

 - http://my.oschina.net/kutengshe/blog/464159?fromerr=jjjnpTiJ


```
git clone https://github.com/vim/vim
cd vim
./configure

```

###02 

```
cd ~
git clone https://github.com/Rainboylvx/RainboyVim.git

cd RainboyVim
install font: DejaVu Sans Mono for Powerline Nerd Font Plus Font Awesome Plus Octicons Plus Pomicons Windows Compatible.ttf
```

###03
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim
:PluginInstall
```

###04 install YCM

```
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive

```

download libclang

 - http://llvm.org/releases/download.html#3.7.1

```
tar -xvf clang+llvm-3.7.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz
cd clang+llvm-3.7.0-x86_64-linux-gnu-ubuntu-14.04
sudo cp -r * /usr/local
```

download libc++ libc++abi

```
tar -xvf libcxx
cd libcxx
cd lib
./buildit

cd ..
mkir /usr/include/c++/v1/
sudo cp -r ./include/ /usr/include/c++/v1/
cd lib
sudo cp ./libc++.so.1.0 /usr/lib/
cd /usr/lib/
sudo ln -s ./libc++.so.1.0 ./libc++.so.1
sudo ln -s ./libc++.so.1.0 ./libc++.so
```

libc++abi

```
tar -xvf libcxxabi
cd libcxxabi
cd lib
./buildit

cd ..
sudo cp -r include/ /usr/include/c++/v1/
cd lib
sudo cp libc++abi.so.1.0 /usr/lib/
cd /usr/lib
sudo ln -s ./libc++abi.so.1.0 ./libc++abi.so.1
sudo ln -s ./libc++abi.so.1.0 ./libc++abi.so

```

 - http://blog.csdn.net/firebird321/article/details/48528569

```
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
在YouCompleteMe目录下 ./install.sh --clang-completer
cd ~
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=llvmpath ~/.vim/bundle/YouCompleteMe/third_party/ycm/cpp
cmake --build . --target ycm_core
```
 
超快速的安装方法

```
cd ~/.vim/bundle/YouCompleteMe
/install.sh --clang-completer
```

###YCM错误解决
vim 1.cpp 打开后 提醒有一个错误的 third_party里的syntax-parse.py：
UnicodeDecodeError:'ascii' codec can't decode byte ......

打开syntax-parse.py:
import re
import vim
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
from ycm import vimsupport



缺少 .ycm_extra_conf.py


###wmctrl 控制gvim 全屏

```
sudo apt-get install wmctrl
```


###vimshell

vimproc
```
cd vimproc.vim
make
```

###添加GVIM application
```
cdd /usr/share/applications
sudo vim gvim.desktop

[Desktop Entry]
Encoding=UTF-8
Name=gvim
Comment=Eclipse IDE
Exec=/usr/bin/gvim
Icon=/home/rainboy/RainboyVim/vimico/vim48.png
Terminal=false
starttupNotify=true
Type=Application
Categories=Application;Development;
```

###加入Ultisnip 脚本

```
cp -r ~/Rainboyvim/mysnippets  ~/.vim/bundle/ultisnips/
```

### syntastic

javascript

```
npm install -g jshint
let g:syntastic_javascript_checkers = ['jshint']
```

` .jshintrc` 配置文件,可以放到vim的home下,应该自己设置一个路径来让vim检测

具体看:

http://www.tuicool.com/articles/AzIRviR


<center># 快捷键 </center>

## 书签

有两种书签,这里只使用独立书签,减少记忆负担

| 名字     | 作用                         |
|----------|------------------------------|
| m        | m=mark 设定/取消当前行的书签 |
| mm       | 自动命名                     |
| ms       | ListLocalMarks               |
| mn       | GotoNextSpotByPos            |
| mp       | GotoPrevSpotByPos            |
| dm       | DeleteMar                    |
| m<space> | PurgeMarks                   |

##  Archlinux 下安装YCM

http://www.tuicool.com/articles/RZRJJbf

```
yaourt -S clang (编译会得到/usr/lib/libclang.so)
cd ~
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" -DEXTERNAL_LIBCLANG_PATH=/usr/lib/libclang.so . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core
```

## 解决fcitx.vim不能使用的的问题

http://blog.chinaunix.net/uid-20147410-id-3618967.html

 - 设置(Fcitx配置>>全局配置>>程序>>在窗口间共享状态）为否
 - 使用命令在外部设置的方法：（之所以我的机器需要这步是因为在一些java软件里输入法的状态不能自动保持）
 - 打开配置文件 ~/.config/fcitx/config文件，首先备份一下。
 - 找到 [Program] 段，把 ShareStateAmongWindow=PerProgram 改成 ShareStateAmongWindow=No
 - 运行命令 fcitx-remote -t 使新配置文件生效。

-----------------


# 未来的

 - 抄一遍[K-VIM](https://github.com/wklken/k-vimhttps://github.com/wklken/k-vim)
