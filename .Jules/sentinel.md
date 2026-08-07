## 2024-05-24 - Unsafe Reporting Channel Instructions

**Vulnerability:** Security and Code of Conduct documents instructed users to direct message maintainers on GitHub, which is not supported, potentially leading users to report sensitive information publicly or fail to report issues entirely.
**Learning:** GitHub does not support private direct messaging. Providing invalid contact channels for security reports can lead to unintentional public disclosure of vulnerabilities.
**Prevention:** Always verify that proposed contact channels for security reports are functional and support private communication. Direct users to an email address or a dedicated private vulnerability reporting feature.

## 2024-05-24 - Command Injection in GitHub Actions via pull_request_target

**Vulnerability:** Workflows used inline template injection (`${{ github.head_ref }}`) inside `run` blocks for events (`pull_request_target`) where the reference is controlled by external users. This allowed arbitrary code execution.
**Learning:** GitHub Actions templating is evaluated _before_ the bash script is run. Injecting un-sanitized context variables (like PR branches or titles) directly into scripts leads to command injection vulnerabilities.
**Prevention:** Always map context variables (like `github.head_ref` or `github.event.pull_request.title`) to environment variables (`env:`) and reference them in bash as `$ENV_VAR`.

## 2024-08-07 - Authorization Bypass in GitHub Actions via pull_request_target

**Vulnerability:** The workflow `Apps/Docs/jules-automerge.yml` ran on `pull_request_target` with `write` permissions but did not verify the actor of the pull request. This allowed any external user to trigger the workflow with elevated privileges.
**Learning:** Workflows running on `pull_request_target` execute in the context of the base repository. Without strict actor authorization, an attacker could potentially exploit the workflow to perform unauthorized operations using the repository's `GITHUB_TOKEN`.
**Prevention:** GitHub Actions workflows running on `pull_request_target` with write permissions must explicitly authorize the actor (e.g., verifying `github.actor == 'RazorBackRoar'`) to prevent authorization bypass vulnerabilities from external forks.
