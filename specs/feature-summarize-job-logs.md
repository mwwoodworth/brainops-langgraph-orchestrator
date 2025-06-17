# Feature: Summarize Job Logs

## Goal
POST `/summaries/jobs` that returns a concise summary of job execution logs.

## Acceptance Criteria
- Endpoint in `app/api/summaries.py`
- Accepts JSON: `{ "job_id": "<uuid>" }`
- Calls LangGraph summarizer node
- Returns `{ "summary": "<text>" }`
- Unit tests in `tests/test_summaries.py`
