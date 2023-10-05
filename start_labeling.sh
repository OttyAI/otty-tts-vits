#!/bin/bash

echo "======"
echo "请确定所有的音频已经按标准处理完毕，否则必报错！"
echo "======"
echo

export PATH=./env/Scripts:./env:ffmpeg/bin:$PATH
./env/python.exe auto_DataLabeling_re.py

read -p "按 Enter 键继续..." -r
