## 2026-08-16 - Add Cache Control to Vercel Dynamic Assets
**Learning:** Vercel-hosted dynamic assets like `github-readme-stats` without caching parameters cause serverless cold starts and degrade load times in the profile README.
**Action:** Always append a `cache_seconds` parameter (e.g., `&cache_seconds=86400`) to dynamic asset URLs to improve performance.
