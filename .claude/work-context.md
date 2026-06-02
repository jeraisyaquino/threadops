# Work Context
**Timestamp**: 2026-06-02 17:02 PH (UTC+8)

## Current Task
Debugging and fixing real-time cross-device updates for Department, Apparel Preview, and Dashboard views.

## Completed So Far
- Fixed Board SVG: left-aligned, bigger sizes, timeline modal popup on SVG click
- Added Supabase real-time publication for `projects` and `activity_feed` tables
- Added `setupChannels()` with INSERT/UPDATE/DELETE handlers and dedup logic
- Fixed self-destructing reconnect loop (was causing channels to be torn down every 3s)
- Removed pull-to-refresh (buggy, unnecessary if real-time works)
- Added dedicated `_rtSb` client for subscriptions with isolated auth storage key
- Added diagnostic `console.log` statements to trace the INSERT handler
- Board real-time is confirmed working
- Both channels show `SUBSCRIBED` status in console
- `[RT] INSERT received` fires on both Admin and Staff windows
- Identified that INSERT is received but **something in the handler silently fails** on the non-saving window
- Added detailed diagnostics: `JSON.stringify(payload.new)`, dept check, dedup check, error catch
- Auto-deploy hook: `vercel --prod` runs after every `git commit`

## Next Steps
- User needs to hard refresh Staff window and add a project from Admin
- Check Staff console for new detailed logs:
  - `[RT] INSERT raw new: {...}` — see if `dept` field is present
  - `[RT] dept: jersey  arr? true  len: X  already: false` — confirm dedup passes
  - `[RT] applied!` — confirm refreshProjectViews() is called
  - OR `[RT] error: ...` — catch silent exception
- Based on those logs, apply the actual fix (likely `payload.new` missing fields or silent exception in `refreshProjectViews()`)
- Once real-time is confirmed working, remove all `console.log` diagnostic statements
