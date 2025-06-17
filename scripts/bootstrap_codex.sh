#!/usr/bin/env bash
set -euo pipefail
python -m pip install openai langgraph codex-cli==1.0.1
codex generate --all
