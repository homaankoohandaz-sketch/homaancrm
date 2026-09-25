# CONNECTION PLAN

## What the user connects

The user connects accounts once.
The control plane stores only capability/status metadata.

### Required first connection

**GitHub**
- already connected
- repository access verified
- control plane repository: homaankoohandaz-sketch/homaancrm

### Next infrastructure connection

**Dedicated Supabase project**
- separate from BuildWise
- used for runtime state, audit and telemetry
- create only after cost/free-tier confirmation

### Execution gateway

**Cloudflare**
- user creates/links the Worker account/project
- gateway secret names are stored in the control plane
- actual secrets stay in Cloudflare secret storage

### AI providers

Connect only when the corresponding capability is needed:

- Claude
- OpenAI/Codex
- Gemini
- Grok

Prefer OAuth/official connectors where available.
Otherwise use API keys stored in the gateway's secret store.

## User never does

- paste API keys into GitHub files
- paste refresh tokens into chat
- manually move prompts between agents
- manually copy outputs between agents

## User does

- authorize a provider once
- approve sensitive production actions
- provide business input when genuinely required

## Result

The user interface becomes:

REQUEST → OUTPUT

The control plane handles the middle.
