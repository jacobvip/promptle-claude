---
name: promptle
description: Play today's Promptle puzzle while waiting for background tasks. Opens the game in your browser and notifies you on the page when your agent finishes.
user_invocable: true
---

# Promptle

Open today's Promptle puzzle in the browser. If a background agent is running, you'll get a toast notification on the game page when it finishes.

## Steps

1. Generate a session ID:

Run this Bash command:
```bash
echo $(uuidgen | tr '[:upper:]' '[:lower:]') > /tmp/promptle-session && cat /tmp/promptle-session
```

2. Open the browser with the session ID from step 1:

Detect the platform and run the appropriate command:
- macOS: `open "https://promptle.app/play?session=SESSION_ID"`
- Linux: `xdg-open "https://promptle.app/play?session=SESSION_ID"`
- Windows: `start "https://promptle.app/play?session=SESSION_ID"`

Replace SESSION_ID with the actual UUID from step 1.

3. Tell the user:

> Promptle opened in your browser. If you have a background task running, you'll see a notification on the page when it finishes. Enjoy!
