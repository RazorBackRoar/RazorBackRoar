## 2024-05-24 - Incorrect Contact Information in Documentation

**Vulnerability:** Contact instructions in `SECURITY.md` and `CODE_OF_CONDUCT.md` directed users to message a user directly on GitHub, which is impossible since GitHub does not support private messaging.
**Learning:** This is a documentation bug where the contact instructions provided an impossible method of communication. If users tried to report a vulnerability or Code of Conduct violation privately via GitHub messaging as instructed, they would be unable to do so, potentially leading to them giving up or disclosing the issue publicly.
**Prevention:** Ensure that all documentation providing instructions for private contact directs users to valid, supported communication channels, such as email addresses listed on a user's GitHub profile.
