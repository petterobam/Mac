#########################################################################
# File Name: init-man-color.sh
# Author: ouyangjie
# mail: 1460300366@qq.com
# Created Time: 2020-03-01 14:05
#########################################################################
#!/bin/bash

read -t 3000 -s -p "下面为您优化化 mac 命令行的配色  （y/n）:" input
echo -e "\n"
if ! [[ "$input" == $'y' ]]; then
  exit 1
fi

# 个人 home 目录
USER_HOME_PATH=$(cd `~`; pwd)
echo "当前用户 home 目录: $USER_HOME_PATH"
# 当前文件所在目录
SHELL_PATH=$(cd `dirname $0`; pwd)
echo "当前 shell 文件目录: $SHELL_PATH"

echo "cd $SHELL_PATH"
cd $SHELL_PATH

echo "添加 man 色彩配置到 $USER_HOME_PATH/.zshrc ..."
echo "# man 命令配色方案" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_mb=\$'\\E[1m\\E[32m'" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_mh=\$'\\E[2m'" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_mr=\$'\\E[7m'" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_md=\$'\\E[1m\\E[36m'" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_ZW=\"\"" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_us=\$'\\E[4m\\E[1m\\E[37m'" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_me=\$'\\E(B\\E[m'" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_ue=\$'\\E[24m\\E(B\\E[m'" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_ZO=\"\"" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_ZN=\"\"" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_se=\$'\\E[27m\\E(B\\E[m'" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_ZV=\"\"" >> $USER_HOME_PATH/.zshrc
echo "export LESS_TERMCAP_so=\$'\\E[1m\\E[33m\\E[44m'" >> $USER_HOME_PATH/.zshrc
echo "添加 man 色彩配置到 $USER_HOME_PATH/.zshrc 完成"
