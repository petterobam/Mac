#!/bin/bash
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

# homebrew
sh homebrew-init.sh

## zsh
sh zsh-init.sh

# vim
sh vim-init.sh

# jdk
sh jdk-init.sh

# ruby 相关环境
sh ruby-init.sh

# node 安装
sh node-init.sh

# python3 安装
sh python3-init.sh
