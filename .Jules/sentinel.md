## 2026-07-23 - [GitHub Direct Messaging Limitation]
**Vulnerability:** Contact instructions in `SECURITY.md` and `CODE_OF_CONDUCT.md` directed users to message the maintainer directly on GitHub, which GitHub does not support, resulting in a broken vulnerability and abuse reporting path.
**Learning:** GitHub profiles do not have a direct messaging feature. Security/abuse contact instructions relying on this will silently fail to provide users a way to report issues.
**Prevention:** Always provide a direct email address (or reference an email listed on a profile/website) or a dedicated reporting form instead of relying on non-existent platform features for critical reporting paths.
