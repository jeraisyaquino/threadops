# Work Context

**Timestamp**: 2026-06-04 02:30 PHT (UTC+8)

**Current task**: Manual savepoint — no active task

**Completed so far**:
- Fixed duplicate activity feed entries on payment log — `insertFeedEntry` was manually pushing to `feedItems` and incrementing `notifUnread` in addition to the realtime postgres_changes handler doing the same, causing every event to appear twice. Removed the manual update; realtime handler is now the sole source of truth.

**Next steps**:
- None — fix is confirmed working after hard refresh cleared PWA service worker cache
