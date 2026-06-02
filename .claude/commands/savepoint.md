Create a git savepoint for the current state of the ThreadOps project.

Steps:
1. Write a work-context file to `.claude/work-context.md` with the following structure:
   - **Timestamp**: current PH time (UTC+8)
   - **Current task**: brief description of what is actively being worked on (infer from recent conversation, or write "Manual savepoint — no active task")
   - **Completed so far**: bullet list of what has been done in this session
   - **Next steps**: bullet list of what still needs to be done to finish the current task
   This file is used by pullsave to resume work after a usage limit or interruption.

2. Run `git status` to show what's being saved
3. Run `git add -A` to stage everything
4. Get the current PH timestamp (UTC+8) and format it as "YYYY-MM-DD HH:MM"
5. Commit with message: `Savepoint: [timestamp]`
6. Push to origin master
7. Create an annotated git tag named `savepoint-[YYYY-MM-DD]` with message "Savepoint [timestamp]" and push it
8. Confirm success with the commit hash and tag name

If there are no changes to commit, still write the context file, create the tag on the current HEAD, and push it.
Show the user the final commit hash and tag so they can reference it later.
