# RainboyVim

###01 ubuntu 下安装vim74+vimgdb7.4

 - http://my.oschina.net/kutengshe/blog/464159?fromerr=jjjnpTiJ

###02 

```
cd ~
git clone https://github.com/Rainboylvx/RainboyVim.git

cd RainboyVim
install font: DejaVu Sans Mono for Powerline Nerd Font Plus Font Awesome Plus Octicons Plus Pomicons Windows Compatible.ttf
```

###03
```
cd ~
mkdir .vim
cd .vim
mkdir bundle
cd bundle
git clone https://github.com/VundleVim/Vundle.vim.git
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

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
cd ~
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=llvmpath ~/.vim/bundle/YouCompleteMe/third_party/ycm/cpp
cmake --build . --target ycm_core


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
