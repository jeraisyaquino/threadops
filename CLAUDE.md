# RULES FOR THIS PWA PROJECT

## Code Layout
- This is a single-file app (`index.html`). 
- The styles (CSS) are squished into single lines and split by labels like `/* ▢ SIDEBAR ▢ */`.

## How to Save Tokens (Crucial)
- Do not re-read or look at the CSS sections unless I specifically ask you to change the design.
- When making changes, only change the exact lines that need fixing. NEVER rewrite the whole file.
- If you cannot easily patch the code, stop and ask me for help. Do not guess.

## Tool & MCP Rules
- You are connected to the Supabase MCP and PWA Builder MCP.
- Do not use the PWA Builder tool automatically. Only use it when explicitly asked.

## Git Commit & Wrap-Up Reminder
- Whenever a feature is complete, print this EXACT message at the end of your response — do not skip it:
  "👉 **Changes are ready to commit! Once you commit and push, please type `/clear` to wipe the session history and save your tokens.**"

## Git Commit & Push — Always Ask First
- NEVER run `git commit` or `git push` automatically, even if the user says "yes commit and push" in chat.
- Before executing any commit or push, you MUST use AskUserQuestion with a Yes/No confirmation: "Ready to commit and push?" with [Yes] and [No] options.
- Only proceed with the git commands after the user clicks Yes on that prompt.
