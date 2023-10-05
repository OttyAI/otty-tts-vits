#!/bin/bash

export PATH=./env/Scripts:./env:ffmpeg/bin:$PATH

echo "======"
echo "请注意！你需要先完成标注，而继续执行将删除所有含英文字母及过短的标注数据"
echo "======"
echo

read -p "按 Enter 键继续..." -r

./env/python.exe clean_list.py

read -p "按 Enter 键继续..." -r
