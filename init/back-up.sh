#!/bin/bash
# 初始化备份个人 Mac 个人空间
# 个人 home 目录
USER_HOME_PATH=$(cd `~`; pwd)
echo "当前用户 home 目录: $USER_HOME_PATH"
# 当前文件所在目录
SHELL_PATH=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $SHELL_PATH"

echo "cd $SHELL_PATH"
cd $SHELL_PATH

# oh-my-zsh
echo "开始备份 oh-my-zsh ..."
echo "拷贝 .oh-my-zsh 目录： sudo cp -r $USER_HOME_PATH/.oh-my-zsh/ $SHELL_PATH"
sudo cp -r $USER_HOME_PATH/.oh-my-zsh/ $SHELL_PATH
echo "拷贝 .zshrc 文件：sudo cp $USER_HOME_PATH/.zshrc $SHELL_PATH"
sudo cp $USER_HOME_PATH/.zshrc $SHELL_PATH
echo "备份 oh-my-zsh 结束"

# vim
echo "开始备份 vim ..."
echo "拷贝 .vim 目录：sudo cp -r $USER_HOME_PATH/.vim/ $SHELL_PATH"
sudo cp -r $USER_HOME_PATH/.vim/ $SHELL_PATH
echo "拷贝 .vimrc 文件：p $USER_HOME_PATH/.vimrc $SHELL_PATH"
sudo cp $USER_HOME_PATH/.vimrc $SHELL_PATH
echo "备份 vim 结束"

# todo.txt 备份
echo "开始备份 .todo.txt ..."
echo "cp $USER_HOME_PATH/.todo/config $SHELL_PATH/todo.txt.config"
cp $USER_HOME_PATH/.todo/config $SHELL_PATH/todo.txt.config
echo "备份 .todo.txt 结束"
