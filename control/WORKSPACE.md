# WORKSPACE MAP

## Production
- homaankoohandaz-sketch/homaan_crm
  Current BuildWise production application.
  Protected: login/bootstrap and validated modules.

## Control Plane
- homaankoohandaz-sketch/homaancrm
  This repository.
  Purpose: agent registry, skills, access map, decisions, source registry and orchestration rules.

## Operating rule
The control plane stores knowledge about how to work. Production repositories store production code. Never mix the two unless a task explicitly requires a controlled change.
