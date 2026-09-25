# TASK CONTRACT v1

Every automation request becomes a normalized task.

## Required fields

- task_id
- project_id
- goal
- input
- constraints
- acceptance_criteria
- allowed_capabilities
- forbidden_actions
- artifacts_required
- approval_policy

## Execution state

QUEUED
→ PLANNING
→ DISPATCHED
→ RUNNING
→ REVIEW
→ QA
→ RETEST
→ VERIFIED
→ DELIVERED

Failure:
RUNNING → BLOCKED → DIAGNOSED → RETRY/FIX

## Worker contract

A worker must declare:

- worker_id
- provider
- capabilities
- input_schema
- output_schema
- permissions
- cost_mode
- availability
- timeout
- health_status

## Output contract

Every worker returns:

- status
- artifacts
- changed_resources
- tests
- evidence
- warnings
- next_action

No "done" state is accepted without evidence.

## Example

```json
{
  "task_id": "task_001",
  "project_id": "website-demo",
  "goal": "Build a production-ready animated company website",
  "input": {},
  "constraints": ["mobile-first", "editable", "low-cost"],
  "acceptance_criteria": [
    "responsive",
    "functional navigation",
    "performance checked",
    "deployment verified"
  ],
  "allowed_capabilities": [
    "research",
    "ux",
    "frontend",
    "image",
    "3d",
    "qa",
    "deploy"
  ],
  "forbidden_actions": [
    "publish without approval"
  ],
  "artifacts_required": [
    "source",
    "preview_url",
    "test_report"
  ],
  "approval_policy": {
    "production_publish": "required"
  }
}
```
