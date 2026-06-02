Pull and restore the most recent savepoint for the ThreadOps project.

Steps:
1. Run `git fetch --tags origin` to fetch all tags and commits from remote
2. Run `git tag -l "savepoint-*" --sort=-version:refname` to list savepoint tags newest-first
3. Show the user the list of available savepoints with their dates
4. Run `git pull origin master` to bring the local branch up to date with the latest saved state
5. Show `git log --oneline -5` so the user can see recent history
6. Confirm what was restored: the latest commit hash, message, and timestamp

7. Check for `.claude/work-context.md`:
   - If it exists, read it and display its contents under a "--- Resuming from last session ---" header
   - Then ask the user: "Would you like me to continue from where we left off?" and wait for their response
   - If they say yes, pick up the next steps listed in the context file and proceed with them
   - If the context file does not exist, fall back to showing the last 3 commit messages as context clues and say: "No saved context found — here are the most recent commits as a reference"

If no savepoint tags exist, just do a `git pull origin master` and note that no tagged savepoints were found.
