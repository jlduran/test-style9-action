#!/bin/sh
set -e

# change to source code directory
cd "$GITHUB_WORKSPACE"

# style(9) applicable files
# XXX: Add more!
FILE_SELECTOR="'*.c' '*.h' '*.m'"
FILES_CHANGED="$(git diff-tree --no-commit-id --name-only --diff-filter=ACM -r "$GITHUB_SHA")"
echo "$FILES_CHANGED" > FILES
# XXX: grep FILE_SELECTOR

# Run checks on changed files
uncrustify -c /uncrustify.cfg -F FILES

exit 0
