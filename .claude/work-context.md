# Work Context
**Timestamp**: 2026-06-03 18:30 PH (UTC+8)

## Current Task
Manual savepoint — UI polish and deployment fixes session

## Completed So Far
- Design file upload feature (jersey, merch, scrub — not dress):
  - Added `design_file_url` column to Supabase `projects` table
  - Created `design-files` Supabase Storage bucket with anon RLS policy
  - Upload button in Design palette column (edit mode only)
  - "Design Approved" green pill appears beside SVG when file uploaded
  - "Design Approved" chip in view mode header (beside the SVG/name area)
  - Timeline tab: checkmark icon + "Design Approved" event, flex dot layout, 18px spacing
  - Removed `markDesignApproved()` button entirely
- Vercel deployment fixes:
  - Created `.vercel/project.json` for project linkage
  - Fixed PostToolUse hook: now triggers on `git push`, uses `npx vercel deploy --prod --yes`
  - Installed Vercel CLI globally (`npm i -g vercel`) and authenticated
  - Added all Vercel MCP tools to allow list in settings.local.json
- Timeline UI improvements:
  - Removed redundant "Design Approved" banner from timeline tab (header chip covers it)
  - Dots now use flexbox layout with connecting lines (matches Board style)
  - Removed `✓` character — icon only
- Mobile view mode fix:
  - View mode now shows Details/Timeline tabs on mobile (was wrongly showing Design/Details)
  - switchToEdit() correctly restores Design/Details tabs on mobile
- Workflow preferences saved to memory:
  - Always ask Yes/No before commit/push
  - Ask BEFORE running git, not after
  - Use AskUserQuestion tool for all confirmations

## Next Steps
- Continue with any remaining UI tweaks the user requests
- Test design file upload on mobile
