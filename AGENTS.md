# Agents Guidelines

## Automated Agent & Jules Integration Guidelines

- **Jules PR Auto-Merge**: Automated PRs created on branches starting with `sentinel-`, `bolt-`, or `palette-` are handled by GitHub Actions (`.github/workflows/jules-automerge.yml`).
- **No Duplicate Issue/PR Reopening**: Jules subagents must verify existing closed and open PRs before proposing repetitive fixes or contact info updates.
- **Branch Cleanup**: Head branches are deleted automatically upon squash-merge.

### Jules Autonomous Execution Rules

- **Auto-Approve Plans**: Automatically approve execution plans for background suggestions (testing, code health, performance). Do not pause or wait for human plan approval on routine refactoring.
- **Batching**: Group related unit tests or code health fixes into a single PR rather than creating endless single-function PRs.
