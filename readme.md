# RainboyVim

## 1.下载 或 手动安装 `vim 8.0


## 2. clone 本配置


```bash
# clone 到~
git clone https://github.com/Rainboylvx/RainboyVim.git ~
cd ~/RainboyVim
# install font: DejaVu Sans Mono for Powerline Nerd Font Plus Font Awesome Plus Octicons Plus Pomicons Windows Compatible.ttf
cp ./extra/.vimrc ~
```

**安装字体**

```
sudo mkdir /user/share/fonts/truetype/powerline
sudo cp DejaVu Sans Mono for Powerline Nerd Font Plus Font Awesome Plus Octicons Plus Pomicons Windows Compatible.ttf /user/share/fonts/truetype/powerline
cd /user/share/fonts/truetype/powerline
sudo mkfontdir
sudo mkfontscale
sudo fc-cache
# 查看是否已经安装
fc-list |grep DejaVu
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
yarn add tsserver ?

## coc-python
sudo pip install pylint jedi # 语法检查,补全server
```
