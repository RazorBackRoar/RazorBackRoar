## 2026-08-13 - Vercel Cold Starts on Dynamic Assets

**Learning:** Vercel-hosted dynamic assets like `github-readme-stats` can experience cold starts, leading to increased load times in the profile README.
**Action:** Always include a `cache_seconds` parameter (e.g., `&cache_seconds=86400`) in URLs for dynamic assets to minimize cold starts and improve load times.
