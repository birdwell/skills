#!/usr/bin/env bash
# Install Josh's skills into any agent that reads SKILL.md folders.
# Usage: ./scripts/install.sh [skill-name ...]   (default: all skills)
# Env:   TARGETS="$HOME/.claude/skills $HOME/.cursor/skills"  (override targets)
#        MODE=copy|link  (default: link, so `git pull` updates everything)
set -euo pipefail
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGETS="${TARGETS:-$HOME/.claude/skills $HOME/.cursor/skills $HOME/.codex/skills}"
MODE="${MODE:-link}"
if [ "$#" -gt 0 ]; then names=("$@"); else names=($(ls "$REPO/skills")); fi
for t in $TARGETS; do
  # Only install where the tool already exists (parent dir present).
  [ -d "$(dirname "$t")" ] || { echo "skip $t (tool not installed)"; continue; }
  mkdir -p "$t"
  for n in "${names[@]}"; do
    src="$REPO/skills/$n"; dest="$t/$n"
    [ -d "$src" ] || { echo "no such skill: $n" >&2; exit 1; }
    rm -rf "$dest"
    if [ "$MODE" = copy ]; then cp -R "$src" "$dest"; else ln -s "$src" "$dest"; fi
    echo "installed $n -> $dest"
  done
done
