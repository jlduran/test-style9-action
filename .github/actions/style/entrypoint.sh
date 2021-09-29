#!/bin/sh
set -e

# change to source code directory
cd "$GITHUB_WORKSPACE"

# style(9) applicable files
# XXX: Add more!
FILE_SELECTOR="'*.c' '*.h' '*.m'"

FILES_CHANGED="$(git diff-tree --no-commit-id --name-only --diff-filter=ACM -r "$GITHUB_SHA")"

# run checks on changed files
for FILE in $FILES_CHANGED; do
	uncrustify -c /uncrustify.cfg -f "${FILE}"
done

exit 0
