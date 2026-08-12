## 2026-08-12 - Cache Vercel Dynamic Assets

**Learning:** Vercel-hosted dynamic assets like `github-readme-stats` cause serverless cold starts and slow down profile load times if not cached.
**Action:** Always include a `cache_seconds` parameter (e.g., `&cache_seconds=86400`) to minimize serverless cold starts and improve load times in the profile README.
