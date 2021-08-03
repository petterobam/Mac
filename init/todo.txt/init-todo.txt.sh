#########################################################################
# File Name: init-todo.txt.sh
# Author: ouyangjie
# mail: 1460300366@qq.com
# Created Time: 2020-03-01 14:05
#########################################################################
#!/bin/bash

# 个人 home 目录
USER_HOME_PATH=$(cd `~`; pwd)
echo "当前用户 home 目录: $USER_HOME_PATH"
# 当前文件所在目录
SHELL_PATH=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $SHELL_PATH"

echo "cd $SHELL_PATH"
cd $SHELL_PATH

# OS X / macOS
brew install todo-txt

# 配置环境变量
echo "export TODO_DIR=\"$HOME/.todo\"" >> $USER_HOME_PATH/.zshrc
