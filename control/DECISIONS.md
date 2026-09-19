# DECISION LOG

## 2026-09-19 — Control Plane
- Separate control repository selected: homaankoohandaz-sketch/homaancrm.
- Existing production CRM homaankoohandaz-sketch/homaan_crm must not be used as the control plane.
- Head Agent owns routing, memory and final QA gate.
- Specialist agents are modular; no specialist may silently replace another domain.
- Public agent/skill sources are registered instead of blindly copying entire repositories.
- Credentials are represented by access metadata only; secrets stay outside Git.
- User-requested domains: coding, website, branding, marketing, video, Instagram/Meta, YouTube, app/AI assistant, project control, CRM, construction and market intelligence.
