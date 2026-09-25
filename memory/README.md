# Memory Architecture

## Tier 1 — Canonical memory

GitHub repository files:
- AGENTS.md
- control/DECISIONS.md
- control/ACCESS_MATRIX.md
- agents/REGISTRY.yml
- agents/skills/*
- project adapters
- workflow definitions

Human-readable and versioned.

## Tier 2 — Operational memory

Dedicated database:
- tasks
- runs
- workers
- worker_health
- artifacts
- audit_events
- approvals
- usage_events

## Tier 3 — Semantic memory

Optional vector/graph memory behind an adapter.

Purpose:
- retrieve relevant prior decisions
- retrieve reusable workflows
- retrieve prior failures and fixes
- retrieve project context

Semantic memory must never override a newer explicit decision in Tier 1.

## Memory write rule

After every verified automation:
- record what changed
- record evidence
- record important decisions
- record reusable lessons
- link artifacts

Do not store secrets.
