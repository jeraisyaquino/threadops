Create a git savepoint for the current state of the ThreadOps project.

Steps:
1. Run `git status` to show what's being saved
2. Run `git add -A` to stage everything
3. Get the current PH timestamp (UTC+8) and format it as "YYYY-MM-DD HH:MM"
4. Commit with message: `Savepoint: [timestamp]`
5. Push to origin master
6. Create an annotated git tag named `savepoint-[YYYY-MM-DD]` with message "Savepoint [timestamp]" and push it
7. Confirm success with the commit hash and tag name

If there are no changes to commit, still create the tag on the current HEAD and push it.
Show the user the final commit hash and tag so they can reference it later.
