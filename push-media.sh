#!/bin/bash
# Hosts the /media folder publicly so Metricool can fetch each post's image/video.
# Run once. Requires gh (GitHub CLI) authenticated as the account in the CSV URLs (lordnoori7).
set -e
cd "$(dirname "$0")"
REPO="nosht-content-month"
gh repo create "$REPO" --public --source=. --remote=origin --push 2>/dev/null || true
git init -q 2>/dev/null || true
git add media && git commit -qm "media for month schedule" || true
git branch -M main
gh repo create "$REPO" --public 2>/dev/null || true
git remote add origin "https://github.com/$(gh api user -q .login)/$REPO.git" 2>/dev/null || true
git push -u origin main
echo "Done. Media live at https://raw.githubusercontent.com/$(gh api user -q .login)/$REPO/main/media/..."
