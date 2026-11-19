---
name: git-cleanup
description: Tidy the repo — prune merged local/remote branches, drop stale stashes, and pull the latest main. Use when the user asks to clean up branches, stashes, or "git cleanup".
---

# Git cleanup

1. `git fetch --all --prune`, then update main: `git checkout main && git pull` (skip the checkout if the working tree is dirty or this is a Conductor workspace on its own branch — just `git fetch origin main:main` instead).
2. **Local branches:** delete everything fully merged into main — `git branch --merged main` (never main or the current branch), then `git branch -d`. List any *unmerged* leftovers with their last-commit date and ask before force-deleting.
3. **Remote branches:** list `origin` branches whose tips are ancestors of `origin/main` (`git branch -r --merged origin/main`, excluding `origin/main` and `origin/HEAD`). Show the list, confirm once, then `git push origin --delete <branch>...`.
4. **Stashes:** `git stash list --date=local`. Drop only stashes that are clearly stale (branch deleted, or content already landed — check with `git stash show -p`). When in doubt, show the list and ask which to drop; never bulk-clear.
5. Finish with a one-line summary: branches deleted (local/remote), stashes dropped, main's new HEAD.
