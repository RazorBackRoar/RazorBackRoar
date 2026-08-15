## 2026-08-15 - Vercel Serverless Cold Starts

**Learning:** Vercel-hosted dynamic assets (like github-readme-stats) can suffer from serverless cold starts, significantly delaying image rendering on the profile page.
**Action:** Always append the `&cache_seconds=86400` parameter to Vercel-hosted dynamic asset URLs to cache the response for 24 hours, mitigating load latency.
