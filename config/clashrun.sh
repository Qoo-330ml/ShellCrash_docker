#!/bin/bash

source /root/.bashrc

# 检测/etc/ShellCrash文件夹是否为空
if [ -z "$(ls -A /etc/ShellCrash)" ]; then
    # 如果文件夹为空，则运行指定命令
    echo "检测到ShellCrash不存在，开始下载"
    (echo "1"; sleep 5; echo "1"; sleep 5; echo "1"; sleep 5; echo "1") | sh install.sh
else
    # 如果文件夹不为空，则输出提示信息
    echo "ShellCrash启动成功，请进入容器，输入crash进行管理！"
fi

sh
