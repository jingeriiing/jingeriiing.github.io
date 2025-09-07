#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$REPO_ROOT"

MSG="${1:-chore: site update $(date '+%Y-%m-%d %H:%M:%S')}"

if ! git config user.name >/dev/null 2>&1 || ! git config user.email >/dev/null 2>&1; then
  echo "未检测到 git user.name 或 user.email，请先执行："
  echo "  git config --global user.name \"你的名字\""
  echo "  git config --global user.email \"你的邮箱\""
  exit 1
fi

git pull --rebase origin main || true
git add -A

if git diff --cached --quiet; then
  echo "无变更需要提交。"
  exit 0
fi

git commit -m "$MSG"
git push -u origin HEAD:main

echo "已推送。稍后访问：https://jingeriiing.github.io/?v=$(date +%s)"
