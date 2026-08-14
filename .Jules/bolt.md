## 2026-08-14 - GitHub Readme Stats Vercel Caching

**Learning:** Dynamic assets hosted on Vercel like github-readme-stats can suffer from severe serverless cold starts, noticeably degrading the load time of the profile README.
**Action:** Always include the `&cache_seconds=86400` parameter on these Vercel-hosted dynamic assets to ensure they are cached at the edge and load instantly.
