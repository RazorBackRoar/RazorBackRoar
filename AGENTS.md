# Agents Guidelines

## Automated Agent & Jules Integration Guidelines
- **Jules PR Auto-Merge**: Automated PRs created on branches starting with `sentinel-`, `bolt-`, or `palette-` are handled by GitHub Actions (`.github/workflows/jules-automerge.yml`).
- **No Duplicate Issue/PR Reopening**: Jules subagents must verify existing closed and open PRs before proposing repetitive fixes or contact info updates.
- **Branch Cleanup**: Head branches are deleted automatically upon squash-merge.

