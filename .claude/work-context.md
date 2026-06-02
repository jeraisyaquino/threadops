# Work Context
**Timestamp**: 2026-06-03 02:28 PH (UTC+8)

## Current Task
Manual savepoint — UI polish session wrapping up

## Completed So Far
- Fixed real-time subscriptions: INSERT/UPDATE/DELETE on all views (departments, apparel, dashboard, activity)
- Fixed `payload.new` Supabase realtime gotcha — now reads properties inline
- Added `renderAllDepts()` to `refreshProjectViews()`
- Board drag-drop now inserts to `activity_feed`
- Removed pull-to-refresh (buggy), real-time is the source of truth
- Inventory: dynamic badge, 6-column grid, low-stock threshold field, warning icons
- Activity tab: mobile layout fix, dept chips, Delivered Archive panel with date filters + SVG cards
- Topbar: unified icon buttons (34×34), clock without seconds/emoji
- Toast: top-right position, rich feed-item card format with icons/badges
- Primary buttons: font-weight 600, stronger shadow
- Ping beacon dot animation on On-going/Finishing status badges (all depts + Apparel Preview)
- Status strip labels: 9px on desktop, 6px on mobile; proj-grid min 185px on desktop
- Board: 230px wide columns, 9px ss-lbl, eye icon on cards for timeline (no drag conflict), larger timeline fonts
- Mobile Add Project modal: rounded corners (20px), Design/Details tabs
- Needs Attention: shimmer skeleton screens on load
- Global CLAUDE.md created with universal lessons
- PWA skill installed globally via skillfish
- "learn this" keyword saves lessons to global CLAUDE.md

## Next Steps
- Review and test all changes on mobile and desktop
- Any remaining UI tweaks the user requests
