## 2024-08-17 - Vercel Serverless Asset Caching

**Learning:** Dynamic assets hosted on Vercel like `github-readme-stats` can cause serverless cold starts and increase profile README load times if not cached.
**Action:** Always include a `cache_seconds` parameter (e.g., `&cache_seconds=86400`) in the URL for Vercel-hosted dynamic assets to minimize cold starts.
