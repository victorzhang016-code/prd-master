#!/usr/bin/env bash
set -euo pipefail

HOST_APP="${1:-claude}"
REPO_URL="https://github.com/victorzhang016-code/prd-master.git"

case "$HOST_APP" in
  claude)
    TARGET_DIR="${PRD_MASTER_DIR:-$HOME/.claude/skills/prd-master}"
    ;;
  codex)
    TARGET_DIR="${PRD_MASTER_DIR:-$HOME/.agents/skills/prd-master}"
    ;;
  *)
    echo "Usage: bash install.sh [claude|codex]"
    exit 1
    ;;
esac

PARENT_DIR="$(dirname "$TARGET_DIR")"
mkdir -p "$PARENT_DIR"

if [ -d "$TARGET_DIR/.git" ]; then
  git -C "$TARGET_DIR" pull --ff-only
elif [ -e "$TARGET_DIR" ]; then
  echo "Target exists but is not a git repository: $TARGET_DIR"
  echo "Please move or remove it, then run the installer again."
  exit 1
else
  git clone "$REPO_URL" "$TARGET_DIR"
fi

echo "Installed prd-master to: $TARGET_DIR"
