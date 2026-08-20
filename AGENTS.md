# Agent Guidelines

## Repository Context

This is a **documentation-only** GitHub profile repository. It contains no
executable source code — only Markdown files (README, policies, and guides).
Application source code lives in sibling repositories under the
[RazorBackRoar](https://github.com/RazorBackRoar) organization.

## Local Automation & Workspace Sync

In this workspace, local automated tools are configured:
- `razor-autosync` may commit locally.
- Remote publishing/pushing uses `RAZORCORE_AUTO_PUSH=1`.

## Rules for Automated Agents (including Jules)

1. **Explicit action only:** Do not create branches, PRs, or commits autonomously without direct instruction from the user.
2. **Batching:** Group related improvements or fixes into a single PR rather than creating multiple overlapping PRs.
3. **No duplicate PRs:** Verify existing open and closed PRs before proposing changes.
4. **Minimal diffs:** Do not perform broad or unsolicited refactoring on static Markdown documentation.
5. **Conventional Commits:** Use standard prefixes (`docs:`, `chore:`, `fix:`, `feat:`).
