#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# fooblah uses Python stdlib only — no pip dependencies.
# Ensure flake8 is available for linting.
pip install --quiet flake8
