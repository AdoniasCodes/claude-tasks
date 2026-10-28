#!/bin/zsh
# Creates the public AdoniasCodes/claude-tasks repo and turns on GitHub Pages.
set -e
cd "${0:A:h}"
gh repo create AdoniasCodes/claude-tasks --public --source . --push
gh api -X POST repos/AdoniasCodes/claude-tasks/pages -f "source[branch]=main" -f "source[path]=/" --jq .html_url
