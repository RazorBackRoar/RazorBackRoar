## 2024-05-24 - Unsafe Reporting Channel Instructions

**Vulnerability:** Security and Code of Conduct documents instructed users to direct message maintainers on GitHub, which is not supported, potentially leading users to report sensitive information publicly or fail to report issues entirely.
**Learning:** GitHub does not support private direct messaging. Providing invalid contact channels for security reports can lead to unintentional public disclosure of vulnerabilities.
**Prevention:** Always verify that proposed contact channels for security reports are functional and support private communication. Direct users to an email address or a dedicated private vulnerability reporting feature.

## 2024-05-24 - Command Injection in GitHub Actions via pull_request_target

**Vulnerability:** Workflows used inline template injection (`${{ github.head_ref }}`) inside `run` blocks for events (`pull_request_target`) where the reference is controlled by external users. This allowed arbitrary code execution.
**Learning:** GitHub Actions templating is evaluated _before_ the bash script is run. Injecting un-sanitized context variables (like PR branches or titles) directly into scripts leads to command injection vulnerabilities.
**Prevention:** Always map context variables (like `github.head_ref` or `github.event.pull_request.title`) to environment variables (`env:`) and reference them in bash as `$ENV_VAR`.

## 2026-08-04 - Authorization Bypass in GitHub Actions via pull_request_target

**Vulnerability:** A GitHub Actions workflow triggered on `pull_request_target` with write permissions was missing actor authorization checks, meaning an external fork could trigger the workflow without authorization from the repository owner.
**Learning:** Workflows executing on `pull_request_target` run in the context of the base repository. Without strict conditions on the actor, untrusted code or actions could gain write access to the repository.
**Prevention:** Always include explicit actor authorization checks (e.g., `if: github.actor == 'RazorBackRoar'`) for workflows triggered by `pull_request_target` that possess write permissions.
