#!/bin/bash

read -t 3000 -s -p "下面为您安装 maven （y/n）:" input
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

# java
echo "maven 安装..."
brew install maven
