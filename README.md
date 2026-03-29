# promptle-claude

Play [Promptle](https://promptle.app) while waiting for Claude Code background tasks. Get a notification right on the game page when your task finishes.

## Install

```bash
npm install -g promptle-claude
```

Then add the skill to your Claude Code settings. Open `~/.claude/settings.json` and add:

```json
{
  "skills": ["promptle-claude"]
}
```

## Setup Completion Notifications (Optional)

To get notified on the Promptle page when your background agent finishes, add this hook to your `~/.claude/settings.json`:

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "pattern": "Agent",
        "command": "bash -c 'SID=$(cat /tmp/promptle-session 2>/dev/null) && [ -n \"$SID\" ] && curl -s -X POST https://promptle.app/api/notify/$SID && rm /tmp/promptle-session'"
      }
    ]
  }
}
```

## Usage

Type `/promptle` in Claude Code to open today's puzzle in your browser.

If you have the hook configured and a background agent is running, you'll see a toast notification on the game page when it completes.
