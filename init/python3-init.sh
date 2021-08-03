#!/bin/bash

read -t 3000 -s -p "下面为您安装 python3 （y/n）:" input
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

# python3 安装
echo "python3 安装..."
echo "依赖包安装..."
brew update
brew install make build-essential libssl-dev zlib1g-dev
brew install libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
brew install libncurses5-dev libncursesw5-dev xz-utils tk-dev
echo "下载：https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz"
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
echo "解压..."
tar xvf Python-3.7.4.tgz
cd Python-3.7.4
echo "配置..."
./configure --enable-optimizations
echo "编译且安装..."
make -j8 && sudo make altinstall
echo "编译清理..."
sudo make clean
echo "python3 --version"
python3 --version
echo "python3 安装结束"
cd $SHELL_PATH
echo "对应python3的pip安装..."
# 下载 pip 安装脚本
echo "curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
echo "sudo python3 get-pip.py"
sudo python3 get-pip.py
echo "对应python3的pip安装结束"
