## 2024-05-24 - Unsafe Reporting Channel Instructions

**Vulnerability:** Security and Code of Conduct documents instructed users to direct message maintainers on GitHub, which is not supported, potentially leading users to report sensitive information publicly or fail to report issues entirely.
**Learning:** GitHub does not support private direct messaging. Providing invalid contact channels for security reports can lead to unintentional public disclosure of vulnerabilities.
**Prevention:** Always verify that proposed contact channels for security reports are functional and support private communication. Direct users to an email address or a dedicated private vulnerability reporting feature.

## 2024-05-24 - Command Injection in GitHub Actions via pull_request_target

**Vulnerability:** Workflows used inline template injection (`${{ github.head_ref }}`) inside `run` blocks for events (`pull_request_target`) where the reference is controlled by external users. This allowed arbitrary code execution.
**Learning:** GitHub Actions templating is evaluated _before_ the bash script is run. Injecting un-sanitized context variables (like PR branches or titles) directly into scripts leads to command injection vulnerabilities.
**Prevention:** Always map context variables (like `github.head_ref` or `github.event.pull_request.title`) to environment variables (`env:`) and reference them in bash as `$ENV_VAR`.

## 2026-08-03 - Authorization Bypass in Auto-Merge Workflow

**Vulnerability:** The auto-merge workflow triggered on `pull_request_target` with write permissions but lacked actor authorization checks. An external fork could create a PR with a trusted branch prefix (e.g., `sentinel-`) and the workflow would automatically merge it, bypassing authorization.
**Learning:** Workflows running on `pull_request_target` have write permissions to the base repository. If they automatically perform privileged actions (like merging PRs) based solely on branch names, they can be abused by external forks who can spoof branch names.
**Prevention:** Always explicitly authorize the actor (e.g., `if: github.actor == github.repository_owner`) for jobs running on `pull_request_target` that perform privileged actions or auto-merges, ensuring that only trusted users can trigger these actions.
