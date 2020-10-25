# RainboyVim

以下的安装针对的是`ubuntu 20.04`的环境,

## 1. 安装对应的软件

最新的vim

```bash
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install vim
```

```bash
sudo apt install -y git gcc g++ curl wget xsel ctags
ccls ?
```

`node yarn`

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

```
wget -P ~/.local/share/fonts/FiraCode \
https://g.ioiox.com/https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf
fc-cache -f -v
# 查看是否已经安装
# fc-list |grep FiraCode
```

手动设置终端的字体为`FiraCode`


## 3. 安装本vim的配置

```bash
sh -c "$(curl -fsSL https://g.ioiox.com/https://raw.githubusercontent.com/Rainboylvx/RainboyVim/master/install.sh)"
```

会自动启动vim并安装插件

## 其它

需要安装的插件

```
## coc-python
sudo pip install pylint jedi # 语法检查,补全server
```
