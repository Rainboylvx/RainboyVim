# RainboyVim

以下的安装针对的是`ubuntu 20.04`的环境,

## 


## 2. clone 本配置

```bash
./install.sh
```

**安装字体**

```
wget -P ~/.local/share/fonts/FiraCode \
https://g.ioiox.com/https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf
fc-cache -f -v
# 查看是否已经安装
# fc-list |grep FiraCode
```

## 3. 安装Plugin

```bash
# 进入vim
vim

# 安装Plugin
:PluginInstall
```

## install youcompeleteme

```sh
pacman -S clang cmake
./install.py --clang-completer --system-libclang

```

## 安装中文文档

中文文档的git地址: https://github.com/yianwillis/vimcdoc

## 使用 auto format

 - 安装 `node.js`
 - 安装 `yarn`
 - 安装 `yarn global add typescript typescript-formatter`

## coc.nvim

需要安装的插件

```
sudo pacman -S yarn node ctags
yarn global add typescript 

## coc-python
sudo pip install pylint jedi # 语法检查,补全server
```
