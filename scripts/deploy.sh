#!/bin/bash
#
# ACM CRE Documentation - Deploy to GitHub Pages
#
# Usage: ./scripts/deploy.sh
#
# Builds the mdbook site and pushes to gh-pages branch.
# Run from the repository root.

set -e

info() { echo "==> $1"; }
error() { echo "error: $1" >&2; exit 1; }

# Check we're in repo root
if [[ ! -f "book.toml" ]]; then
    error "Must run from repository root (where book.toml is located)"
fi

# Warn about uncommitted changes
if [[ -n $(git status --porcelain) ]]; then
    echo "warning: You have uncommitted changes. Consider committing before deploying."
    echo
fi

# Get remote URL
REMOTE_URL=$(git remote get-url origin 2>/dev/null) || error "No git remote 'origin' found"

# Get git user config
GIT_USER_NAME=$(git config user.name) || error "Git user.name not configured"
GIT_USER_EMAIL=$(git config user.email) || error "Git user.email not configured"

# Build
info "Building site..."
mdbook build

# Verify build output
if [[ ! -d "book" ]] || [[ -z "$(ls -A book)" ]]; then
    error "Build produced no output in book/"
fi

info "Preparing deployment..."
# Remove any leftover throwaway repo from a previous failed deploy.
# Otherwise `git checkout -b gh-pages` below fails with "already exists".
rm -rf book/.git
cd book

# Initialize fresh git repo
git init -q
git checkout -q -b gh-pages

# Configure git
git config user.name "$GIT_USER_NAME"
git config user.email "$GIT_USER_EMAIL"

# Commit
git add -A
git commit -q -m "build: deploy $(date '+%Y-%m-%d %H:%M:%S')"

# Push
info "Pushing to gh-pages..."
git push -f -q "$REMOTE_URL" gh-pages

# Cleanup
cd ..
rm -rf book/.git

echo
info "Deployed successfully!"
echo
echo "Site will be available at your GitHub Pages URL shortly."
echo
echo "First time? Configure GitHub Pages:"
echo "  1. Go to: GitHub repo > Settings > Pages"
echo "  2. Source: Deploy from a branch"
echo "  3. Branch: gh-pages / (root)"
echo "  4. Save"
echo
