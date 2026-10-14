#!/usr/bin/env bash
# Copies skills from .claude/skills (the source) to .agents/skills (Codex).
# Usage: bash scripts/sync-codex-skills.sh            # all skills
#        bash scripts/sync-codex-skills.sh audit      # one skill
set -euo pipefail
cd "$(dirname "$0")/.."
SRC=".claude/skills"
DST=".agents/skills"
mkdir -p "$DST"
if [ $# -gt 0 ]; then names=("$@"); else names=($(ls "$SRC")); fi
for name in "${names[@]}"; do
  if [ ! -d "$SRC/$name" ]; then echo "No skill called $name in $SRC" >&2; exit 1; fi
  rm -rf "$DST/$name"
  cp -R "$SRC/$name" "$DST/$name"
  echo "Synced $name"
done
