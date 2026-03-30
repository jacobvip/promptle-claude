# promptle-claude

> A Claude Code skill that lets you play [Promptle](https://promptle.app) while waiting for background tasks — and notifies you on the game page when your agent finishes.

**Promptle** is a daily AI image guessing game. You see an AI-generated image and guess the 5-word prompt that created it. Think Wordle, but for AI image prompts.

## Install

```bash
npm install -g promptle-claude
```

That's it. The `/promptle` slash command is now available in Claude Code.

## Usage

Type `/promptle` in Claude Code. Today's puzzle opens in your browser.

## Completion Notifications (Optional)

Kicked off a long-running background agent? Add this hook to `~/.claude/settings.json` and you'll get a toast notification right on the Promptle page when it finishes:

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

The hook fires when a background agent completes, sending a notification to your open Promptle tab.

## How It Works

1. `/promptle` generates a unique session ID and opens `promptle.app/play?session=<id>`
2. You play today's puzzle while your agent works
3. When the agent finishes, the hook POSTs to the notify endpoint
4. A toast appears on the game page: "Your background task just finished!"

## Uninstall

```bash
npm uninstall -g promptle-claude
```

The skill is automatically removed from Claude Code.

## Links

- [Play Promptle](https://promptle.app) — try today's puzzle
- [Source](https://github.com/jacobvip/promptle-claude) — this repo

## License

MIT
