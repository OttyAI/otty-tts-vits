#!/bin/bash

# 检查是否已安装Git LFS，如果未安装，则安装Git LFS
if ! git lfs version >/dev/null 2>&1; then
  echo "Git LFS is not installed. Installing Git LFS..."
  git lfs install
fi

# 指定目标目录（例如 Models 目录）
target_directory="Models"

# Git LFS 克隆模型到目标目录
git clone https://www.modelscope.cn/damo/speech_paraformer-large_asr_nat-zh-cn-16k-common-vocab8404-pytorch.git "$target_directory"

# 检查克隆是否成功
if [ $? -eq 0 ]; then
  echo "模型克隆成功并存储在 $target_directory 目录中。"
else
  echo "模型克隆失败。"
fi
