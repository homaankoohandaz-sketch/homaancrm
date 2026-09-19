# ACCESS MATRIX

این فایل نقشه دسترسی است، نه محل نگهداری کلیدها.

| Provider | Capability | Required scope | Storage | Status |
|---|---|---|---|---|
| GitHub | repo read/write, branches, PR, Actions | repo + workflow as needed | connected app | connected |
| Supabase | DB/schema/functions/storage | project-specific least privilege | env/secret store | configure per project |
| OpenAI | models/agents | API key | secret store | configure |
| Meta | Instagram Graph/Business | pages_read_engagement, instagram_basic, instagram_manage_comments, instagram_content_publish, insights as applicable | OAuth token store | configure |
| YouTube | upload/analytics | YouTube Data API + Analytics scopes as applicable | OAuth token store | configure |
| Canva | design assets | connected account | connector | optional |
| Figma | UI/design files | connected account | connector | optional |
| Netlify/Vercel | deploy | project-specific | connector/token store | configure |
| Telegram | bot | bot token | secret store | existing bot |
| Pexels/Pixabay | free media | API key if used | secret store | optional |
| Remotion/FFmpeg | local video rendering | local runtime | machine/runtime | configure |

## Security rules
- Never commit API keys, cookies, OAuth refresh tokens, passwords or session files.
- Never give a marketing agent unrestricted write access to production social accounts.
- Default social publishing mode: draft → QA → approval → publish.
- Default GitHub production mode: branch → test → PR/merge → deploy.
- Phone/PII access in CRM remains role-gated.
