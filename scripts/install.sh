#!/usr/bin/env bash
# Install product-thinking-toolkit into Cursor and/or Claude Code.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="${1:-all}"          # all | cursor | claude
SCOPE="${2:-project}"       # project | user
DEST="${3:-.}"              # project root when SCOPE=project

usage() {
  cat <<'EOF'
Usage: scripts/install.sh [all|cursor|claude] [project|user] [project-root]

Examples:
  # Project-local Cursor + Claude (default)
  ./scripts/install.sh

  # Cursor only, into current project
  ./scripts/install.sh cursor project .

  # User-global Claude Code skills
  ./scripts/install.sh claude user

  # User-global Cursor skills + rules
  ./scripts/install.sh cursor user
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

copy_skills_into() {
  local dest_skills="$1"
  mkdir -p "$dest_skills"
  for skill_dir in "$ROOT"/skills/*/; do
    local name
    name="$(basename "$skill_dir")"
    rm -rf "${dest_skills}/${name}"
    cp -R "$skill_dir" "${dest_skills}/${name}"
    echo "  skill  -> ${dest_skills}/${name}"
  done
}

install_cursor() {
  local base rules_dir skills_dir
  if [[ "$SCOPE" == "user" ]]; then
    base="${HOME}/.cursor"
  else
    base="${DEST}/.cursor"
  fi
  skills_dir="${base}/skills"
  rules_dir="${base}/rules"
  mkdir -p "$skills_dir" "$rules_dir"
  echo "Installing Cursor skills → ${skills_dir}"
  copy_skills_into "$skills_dir"
  echo "Installing Cursor rules  → ${rules_dir}"
  for rule in "$ROOT"/rules/*.mdc; do
    cp "$rule" "$rules_dir/"
    echo "  rule   -> ${rules_dir}/$(basename "$rule")"
  done
}

install_claude() {
  local skills_dir
  if [[ "$SCOPE" == "user" ]]; then
    skills_dir="${HOME}/.claude/skills"
  else
    skills_dir="${DEST}/.claude/skills"
  fi
  echo "Installing Claude Code skills → ${skills_dir}"
  copy_skills_into "$skills_dir"
}

case "$TARGET" in
  all)
    install_cursor
    install_claude
    ;;
  cursor)
    install_cursor
    ;;
  claude)
    install_claude
    ;;
  *)
    echo "Unknown target: $TARGET" >&2
    usage
    exit 1
    ;;
esac

echo
echo "Done. Invoke in chat, e.g.:"
echo "  Use the deceptive-pattern-review skill on this checkout flow."
echo "  Run uxd-evaluate-design-heuristics on these screenshots."
