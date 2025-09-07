#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "用法：scripts/update_cv.sh /路径/你的简历.pdf"
  exit 1
fi

REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
cd "$REPO_ROOT"

SRC="$1"
DST="CV.pdf"

cp "$SRC" "$DST"
scripts/update.sh "docs: update CV.pdf"
