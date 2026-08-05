## 2024-05-18 - Caching Vercel-hosted SVG stats

**Learning:** GitHub's Camo image proxy caches images, but `github-readme-stats` is hosted on Vercel serverless functions, which can suffer from cold starts and rate limits, causing the image to randomly fail or load slowly.
**Action:** Always append `&cache_seconds=86400` to `github-readme-stats` URLs to instruct the Vercel function to cache the result, improving reliability and performance.
