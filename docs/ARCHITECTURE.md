# HOMAAN AI CONTROL PLANE — FOUNDATION

## Purpose

This repository is the independent orchestration layer for Hooman's automation work.

It is NOT BuildWise.
BuildWise, websites, apps, content systems, 3D projects and future products are consumers of this control plane.

## Core model

User request → Head Agent → Task Contract → Planner → Router → Workers/Tools → Artifact → QA → Verify → Record.

The Head Agent is the decision and coordination layer.
Workers are replaceable.
Projects are isolated.

## Runtime layers

1. **Source of truth — GitHub**
   - architecture
   - agent registry
   - skills
   - task contracts
   - decisions
   - workflow definitions
   - project adapters
   - non-secret configuration

2. **Operational state — database**
   - task runs
   - job state
   - worker execution state
   - artifact metadata
   - token/cost telemetry
   - audit events
   - approvals
   - connection health

   Preferred implementation: a dedicated Supabase project, separate from BuildWise.

3. **Execution gateway**
   - one stable API boundary
   - receives Task Contracts
   - authenticates the caller
   - resolves workers
   - dispatches jobs
   - records state
   - returns artifacts/status

   Initial implementation may use a lightweight Cloudflare Worker or Supabase Edge Function.
   n8n is optional and never the system dependency.

4. **AI/Tool mesh**
   - Claude
   - Codex
   - Gemini
   - Grok
   - research/search
   - image/video/audio
   - Figma/Canva
   - GitHub
   - deployment providers
   - 3D/CAD tools
   - future MCP servers

5. **Memory**
   - durable decisions and operating rules
   - project context
   - reusable workflows
   - worker capabilities
   - failure history
   - artifact references

   GitHub is the canonical human-readable memory.
   Operational/semantic memory can be added behind an adapter without changing the orchestrator.

## Critical rule

No provider is the architecture.

Providers are adapters selected by capability, availability, quality, cost, latency and permissions.

If one provider disappears, routing must continue with another compatible worker.

## Standard lifecycle

RECEIVE
→ CLASSIFY
→ INSPECT
→ PLAN
→ DELEGATE
→ EXECUTE
→ COLLECT
→ REVIEW
→ TEST
→ FIX
→ RETEST
→ VERIFY
→ DELIVER
→ RECORD

## Project isolation

Every task has a project_id.

Examples:
- buildwise
- website-x
- app-y
- instagram-system
- 3d-project-z

A worker may access only the resources granted by the task contract.

## Human gates

Default:
- destructive infrastructure changes: approval
- production publishing: approval unless explicitly pre-authorized
- social publishing: draft → QA → approval → publish
- financial/purchase actions: approval
- credential changes: approval

Routine non-destructive work should not require repeated user confirmation.
