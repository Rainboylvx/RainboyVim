# RainboyVim

以下的安装针对的是`ubuntu 20.04`的环境,

## 1. 安装软件

### 1.1 最新的vim

```bash
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim-gtk
```

### 1.2 vim要用到的软件

```bash
sudo apt install -y git curl wget ctags ccls
```

### 1.3 node yarn

```bash
# 安装nodejs
wget https://npm.taobao.org/mirrors/node/v14.14.0/node-v14.14.0-linux-x64.tar.xz
tar -xvf node-v14.14.0-linux-x64.tar.xz
sudo cp -r ./node-v14.14.0-linux-x64/* /usr
rm -r  node-v14.14.0-linux-x64*
# 全局安装 yarn
sudo npm install yarn -g --registry=https://registry.npm.taobao.org
# 设置为淘宝镜像
yarn config set registry https://registry.npm.taobao.org/
```

## 2. 安装字体

### 2.1 下载字体
```bash
wget -P ~/.local/share/fonts/FiraCode \
https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf
```

注意：如果下载过慢或不能下载，使用下面命令安装

```bash
wget -P ~/.local/share/fonts/FiraCode \
https://g.ioiox.com/https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf
```


### 2.2 安装字体

```bash
fc-cache -f -v
```

### 2.3 查看是否已经安装

```bash
fc-list |grep FiraCode
```

### 2.4 手动设置终端的字体为`FiraCode`

在ubuntu 20.04下

 - `ctrl+alt+t` 打开终端
 - 右键->首选项
 - 找到字体选项->选择`FiraCode`

如何使用其它linux发行版本，请自行搜索自己的终端模拟器如何更改字体

## 3. 安装本vim的配置

### 3.1 下载相应插件与配置

```bash
# 安装vim-plug 插件
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 安装.vimrc
curl -fLo ~/.vimrc \
https://raw.githubusercontent.com/Rainboylvx/RainboyVim/master/vimrc

# 安装 coc-settings.json
curl -fLo ~/.vim/coc-settings.json \
https://raw.githubusercontent.com/Rainboylvx/RainboyVim/master/coc-settings.json
```

注意：如果下载过慢或不能下载，使用下面命令安装

```bash
# 安装vim-plug 插件
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://g.ioiox.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 安装.vimrc
curl -fLo ~/.vimrc \
https://g.ioiox.com/https://raw.githubusercontent.com/Rainboylvx/RainboyVim/master/vimrc

# 安装 coc-settings.json
curl -fLo ~/.vim/coc-settings.json \
https://g.ioiox.com/https://raw.githubusercontent.com/Rainboylvx/RainboyVim/master/coc-settings.json
```

### 3.2 启动vim并安装对应的

```bash
vim -c PlugInstall
```
会自动启动vim并安装插件。可能时间有点长，等待。

## 4 安装完毕

启动vim，在终端输入

```
vim
```

## 其它

需要安装的插件

```bash
## coc-python
sudo pip install pylint jedi # 语法检查,补全server
```
