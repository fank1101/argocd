#!/bin/bash
# 自动 git 提交并推送脚本（含账号密码）

USERNAME="fank1101"
TOKEN="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"
REPO="github.com/fank1101/argocd.git"

# 提交信息
commit_msg=$1
if [ -z "$commit_msg" ]; then
    commit_msg="auto commit: $(date '+%Y-%m-%d %H:%M:%S')"
fi

# 获取当前分支
#branch=$(git rev-parse --abbrev-ref HEAD)

# 执行 git 操作
git add .
git commit -m "$commit_msg"

# 使用 HTTPS + token 推送

#git push "https://${USERNAME}:${TOKEN}@${REPO}" $branch

