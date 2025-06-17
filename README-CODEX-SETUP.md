# Codex Integration – brainops‑langgraph‑orchestrator

## Secrets
| Secret | Purpose |
|--------|---------|
| CODEX_API_KEY | Codex generation |
| OPENAI_API_KEY | OpenAI fallback |

## Workflow Permissions
`contents: write` & `pull-requests: write` are required because Codex pushes commits.

## Branch Protection
- Protect `main`
- Require status checks: `codex`
- Require **2** approvals (higher criticality)

## Deployment Order
1. Deploy this repo (build Docker image, push to registry, update infra).
2. Update environment variables in **MyRoofGenius‑app** to point to the new orchestrator endpoint.

## Local Bootstrap
```bash
pip install openai langgraph codex-cli
codex generate
```
