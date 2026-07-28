## 2026-07-28 - Ineffective Security Reporting Channel

**Vulnerability:** The `SECURITY.md` and `CODE_OF_CONDUCT.md` files instructed users to report sensitive issues by direct messaging the maintainer on GitHub. However, GitHub does not support a direct private messaging feature. This means that users might be unable to report security vulnerabilities confidentially, potentially leading them to either not report the issue or, worse, report it publicly.

**Learning:** This issue existed because standard templates or assumptions were used without verifying the platform capabilities. A security reporting process is only effective if the designated channels are functional and guarantee confidentiality.

**Prevention:** To avoid this in the future, always verify that the contact methods provided in security policies and codes of conduct are functional, supported by the platform, and provide the necessary level of privacy. For GitHub profile repositories, direct users to an email address (e.g., listed on the profile) or an official vulnerability reporting program.
