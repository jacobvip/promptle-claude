#!/bin/sh
# Remove the Promptle skill from Claude Code's global skills directory
SKILL_DIR="$HOME/.claude/skills/promptle"
if [ -f "$SKILL_DIR/SKILL.md" ]; then
  rm -f "$SKILL_DIR/SKILL.md"
  rmdir "$SKILL_DIR" 2>/dev/null || true
  echo "promptle-claude: Removed /promptle skill from $SKILL_DIR"
fi
