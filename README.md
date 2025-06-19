# brainops-langgraph-orchestrator

LangGraph FastAPI server with AI routing and automation.

## Installation

Use Python 3.11 or later. After cloning the repo install the base
dependencies:

```bash
python -m pip install --upgrade pip
pip install -r requirements.txt
```

For local development with Codex support you can run the helper script
which installs additional packages and generates code:

```bash
./scripts/bootstrap_codex.sh
```

## Running

Start the server using Python. It listens on the port defined by the
`PORT` environment variable (defaults to `8000`).

```bash
python main.py
```

## Environment Variables

| Variable | Purpose |
|----------|---------|
| `PORT` | Port for the FastAPI server (default `8000`). |
| `OPENAI_API_KEY` | Used by `scripts/codegen.py` for OpenAI requests. |
| `CODEX_API_KEY` | Required by Codex CLI and CI workflows. |

## Helper Scripts

- `scripts/bootstrap_codex.sh` – installs Codex dependencies and runs
  `codex generate --all`.
- `scripts/codegen.py` – small wrapper around the OpenAI API. Example:

  ```bash
  python scripts/codegen.py --prompt "Generate hello world" --out generated/hello.txt
  ```

## Contributing

1. Create a feature branch from `main` and make your changes.
2. Ensure tests run cleanly with `pytest -q`.
3. Fill out `PULL_REQUEST_TEMPLATE.md` when opening a PR and note whether
   Codex generated any code.
4. After approval, squash and merge into `main`.
