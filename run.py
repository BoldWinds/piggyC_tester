import os
import subprocess
import shutil

# 指定input目录和output目录的路径
input_dir = '.\\functional'
output_dir = '.\\output'


def exec(input_dir, output_dir):
    map = {}
    # 遍历input目录下的所有文件和文件夹
    for root, dirs, files in os.walk(input_dir):
        for file in files:
            # 检查文件扩展名是否为.sy
            if file.endswith('.sy'):
                # 构建原始文件的路径
                old_file_path = os.path.join(root, file)
                
                # 构建目标文件的路径，并将扩展名改为.s
                new_file_path = os.path.join(output_dir, file[:-3] + '.s')

                        # 构建命令行
                command = ['java', '-jar', 'Compiler.jar', '-S', '-o', old_file_path , new_file_path, '-i0']
                # 执行命令行
                return_code = subprocess.call(command)
                map[file] = return_code
    for key, value in map.items():
        print(value, key)

# 调用函数进行文件复制和重命名
exec(input_dir, output_dir)






