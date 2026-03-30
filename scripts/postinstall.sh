#!/bin/sh
# Install the Promptle skill into Claude Code's global skills directory
SKILL_DIR="$HOME/.claude/skills/promptle"
mkdir -p "$SKILL_DIR"
cp "$(dirname "$0")/../SKILL.md" "$SKILL_DIR/SKILL.md"
echo "promptle-claude: Installed /promptle skill to $SKILL_DIR"
