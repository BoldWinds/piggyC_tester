#!/bin/bash

# 指定目录路径
directory="./output"

# 遍历目录下的文件
for file in "$directory"/*.s; do
  # 检查文件是否存在
  if [ -f "$file" ]; then
    # 执行java -jar compiler.jar命令
    gcc -march=rv64gc -S "$file"
    ./a.out
    echo $?
  fi
done
