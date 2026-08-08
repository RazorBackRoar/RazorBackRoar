## 2026-08-08 - Optimize Vercel-Hosted Dynamic Assets

**Learning:** For Vercel-hosted dynamic assets like `github-readme-stats` used in a profile repository, repeated loading without caching causes Vercel serverless cold starts resulting in noticeable latency on page load.
**Action:** Always append caching parameters (e.g., `&cache_seconds=86400`) to dynamic image URLs hosted via serverless functions (like Vercel) in profile READMEs to ensure the output is cached, thus minimizing serverless cold starts and drastically improving load times.
