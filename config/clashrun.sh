#!/bin/bash
set -e

# 功能：检查并复制备份文件到挂载目录
restore_files() {
    src_dir=$1
    dest_dir=$2

    # 如果目标目录为空且备份存在，则复制文件
    if [ -d "$src_dir" ] && [ -z "$(ls -A $dest_dir 2>/dev/null)" ]; then
        echo "初始化文件到 $dest_dir..."
        cp -a "$src_dir"/* "$dest_dir"/
    fi
}

# 恢复 /tmp 内容
restore_files /root/backup/tmp /tmp

# 恢复 /etc/ShellCrash 内容
restore_files /root/backup/ShellCrash /etc/ShellCrash

source /root/.bashrc

echo "ShellCrash正常启动"

sh
