# Runtime

This directory will contain the executable control-plane runtime.

## Boundary

The runtime does not contain project-specific business logic.

It provides:

- task intake
- authentication
- task persistence
- planner invocation
- worker discovery
- worker dispatch
- retries
- timeouts
- artifact registration
- audit events
- health checks
- usage/cost telemetry

## Initial transport

HTTP API + webhook events.

## Initial endpoints

- POST /tasks
- GET /tasks/:id
- POST /tasks/:id/run
- POST /tasks/:id/cancel
- GET /workers
- GET /workers/:id/health
- GET /artifacts/:id
- GET /health

## Worker execution

The runtime should prefer:
1. native connected tools
2. MCP servers
3. direct provider APIs
4. CLI workers
5. n8n workflows

This order is not absolute; the router selects based on the task and current availability.

## Important

The runtime must never expose provider credentials to another worker.
Each adapter receives only the credential scope it requires.
