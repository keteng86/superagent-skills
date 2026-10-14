#!/usr/bin/env bash
# import_hermes.sh — install this archive into a Hermes profile.
# Usage: bash import_hermes.sh [HERMES_HOME]   (default: ~/.hermes)
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
HM="${1:-$HOME/.hermes}"
mkdir -p "$HM/skills"

# hermes/<id>/SKILL.md  ->  $HM/skills/<id>/SKILL.md   (already correct shape)
for d in "$HERE"/hermes/*/; do
  id="$(basename "$d")"
  mkdir -p "$HM/skills/$id"
  cp -p "$d"SKILL.md "$HM/skills/$id/SKILL.md"
done
echo "installed $(ls -d "$HERE"/hermes/*/ | wc -l) skills -> $HM/skills"

# tools -> $HM/superagent-tools (for direct 'python tools/x.py' calls)
mkdir -p "$HM/superagent-tools"
cp -rp "$HERE"/tools/. "$HM/superagent-tools/"
echo "installed tools -> $HM/superagent-tools"
