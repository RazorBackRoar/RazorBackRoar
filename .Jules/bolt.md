## 2026-08-07 - Vercel Serverless Cold Starts in Profile READMEs

**Learning:** Vercel-hosted dynamic assets (like `github-readme-stats`) used in profile documentation repositories can suffer from serverless cold starts, noticeably degrading load times for viewers.
**Action:** Always append caching parameters (e.g., `&cache_seconds=86400`) to such URLs to minimize cold starts and improve load times.
