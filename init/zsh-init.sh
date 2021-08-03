#!/bin/bash

read -t 3000 -s -p "下面为您安装 oh-my-zsh （y/n）:" input
echo -e "\n"
if ! [[ "$input" == $'y' ]]; then
  exit 1
fi

# 初始化个人 Mac 个人空间
echo "初始化个人 Mac 个人空间：\n"
echo "1、期间安装软件可能需要输入密码；\n"
echo "2、期间安装软件请确认是否需要安装；\n"

# 个人 home 目录
USER_HOME_PATH=$(cd `~`; pwd)
echo "当前用户 home 目录: $USER_HOME_PATH"
# 当前文件所在目录
SHELL_PATH=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $SHELL_PATH"

echo "cd $SHELL_PATH"
cd $SHELL_PATH

## zsh
echo "oh-my-zsh 配置..."
# oh-my-zsh
# cp -r $SHELL_PATH/.oh-my-zsh/ $USER_HOME_PATH/
# git https://github.com/ohmyzsh/ohmyzsh.git $USER_HOME_PATH/.oh-my-zsh
# sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "sh -c \"\$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)\""
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# 默认 zsh
echo "chsh -s /bin/zsh"
chsh -s /bin/zsh
echo "sudo cp $SHELL_PATH/.zshrc $USER_HOME_PATH/"
sudo cp $SHELL_PATH/.zshrc $USER_HOME_PATH/
# 为 man 添加配色
# sh init-man-color.sh
echo "source ~/.zshrc"
source ~/.zshrc
echo "oh-my-zsh 配置结束"
