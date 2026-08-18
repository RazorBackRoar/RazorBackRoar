## 2024-10-24 - Vercel Dynamic Asset Caching
**Learning:** Vercel-hosted dynamic assets (like github-readme-stats) can cause serverless cold starts and slow down profile README load times if not cached.
**Action:** Always append the `cache_seconds` parameter (e.g., `&cache_seconds=86400`) to dynamic Vercel image URLs in markdown files to improve load performance.