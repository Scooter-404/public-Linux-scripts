
#!/bin/bash
# git-add.sh
# Simple helper to stage, commit, and push all changes

# Check for commit message argument
if [ -z "$1" ]; then
  echo "Usage: $0 \"commit message\""
  exit 1
fi

COMMIT_MSG="$1"

# Stage all changes
git add .

# Commit changes
git commit -m "$COMMIT_MSG"

# Push to upstream branch
git push

echo "✅ All changes committed and pushed with message: $COMMIT_MSG"
