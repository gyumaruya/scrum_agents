#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_SRC="$SCRIPT_DIR/.claude/skills/scrum"
SKILL_DST="$HOME/.claude/skills/scrum"

if [ ! -d "$SKILL_SRC" ]; then
  echo "Error: Skill source not found at $SKILL_SRC"
  exit 1
fi

if [ -e "$SKILL_DST" ]; then
  echo "Scrum skill already installed at $SKILL_DST"
  echo "To reinstall: rm -rf $SKILL_DST && $0"
  exit 1
fi

mkdir -p "$HOME/.claude/skills"
ln -s "$SKILL_SRC" "$SKILL_DST"

echo "Installed: $SKILL_DST -> $SKILL_SRC"
echo ""
echo "Use /scrum in any project to get started."
