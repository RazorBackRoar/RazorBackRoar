## 2026-08-10 - Vercel Serverless Cold Starts in Readme Stats

**Learning:** Vercel-hosted dynamic assets like `github-readme-stats` without caching parameters can cause significant load delays in the profile README due to serverless cold starts.
**Action:** Always include a `cache_seconds` parameter (e.g., `&cache_seconds=86400`) in URLs for dynamic documentation assets hosted on serverless platforms to minimize load times.
