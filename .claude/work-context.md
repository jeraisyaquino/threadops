# Work Context

**Timestamp**: 2026-06-04 00:24 PH (UTC+8)

**Current task**: Manual savepoint — 6 major features just shipped in one session.

**Completed so far**:
- Global project search (Ctrl+K shortcut) with instant results across all departments
- Export CSV button on the dashboard — exports all projects with payment and status data
- Payment tracking: Unpaid/Partial/Paid badge + progress bar in project detail view
- Log Payment button in project view modal (admin only) — records incremental payments to `dp` field
- Project Map screen overhauled — now shows a live Gantt/timeline of all active projects with due dates (replaced static Warriors Set placeholder)
- Calendar screen added to sidebar — monthly calendar showing project due dates + Upcoming Deadlines panel for next 30 days
- Bulk status update — checkboxes in list view, floating action bar at bottom, status picker dropdown

**Noted for later (not yet built)**:
- Feature 6: Inventory usage linked to projects — deduct stock when project moves to In Production
- Feature 8: Staff/assignment tracking — who is handling which project

**Next steps**:
- Test all 6 features in the live app (user reviews in browser)
- Address any bugs found after real-world use
- When ready, tackle Feature 6 (inventory deduction) and Feature 8 (staff assignment)
