#!/usr/bin/env bash
set -euo pipefail
python -m pip install openai langgraph codex-cli
codex generate --all
