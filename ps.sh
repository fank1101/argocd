#!/bin/bash
# 自动 git 提交并推送脚本（含账号密码）

# Git 用户名和密码（⚠️明文存储，不安全）
USERNAME="fank1101"
PASSWORD="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"
REPO="https://github.com/fank1101/argocd.git"

# 提交信息
commit_msg=$1
if [ -z "$commit_msg" ]; then
    commit_msg="auto commit: $(date '+%Y-%m-%d %H:%M:%S')"
fi

git add .
git commit -m "$commit_msg"
git push "https://${USERNAME}:${PASSWORD}@${REPO}" main

