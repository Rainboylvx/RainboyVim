curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://g.ioiox.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vimrc \
        https://g.ioiox.com/https://raw.githubusercontent.com/Rainboylvx/RainboyVim/master/vimrc
curl -fLo ~/.vim/coc-settings.json \
        https://g.ioiox.com/https://raw.githubusercontent.com/Rainboylvx/RainboyVim/master/coc-settings.json
# 启动vim并执行命令
vim -c PluginInstall
