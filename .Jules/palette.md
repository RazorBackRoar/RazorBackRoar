## 2024-10-18 - [Markdown Semantics Matter]

**Learning:** Even in static profile READMEs, using semantic lists instead of visual line breaks significantly improves the experience for screen reader users and visual scanners.
**Action:** Always check Markdown "lists" that are actually just paragraphs with breaks, and convert them to true lists.

## 2026-07-31 - [Alt Text for Badges & Stats]

**Learning:** Image badges and stat trackers in README files are often wrapped in anchor tags. Without `alt` text on the `img` tags, screen readers only announce the URL which isn't helpful. Adding `alt` text makes the purpose of the stat image or badge immediately apparent.
**Action:** Always ensure that informative or decorative images, particularly those acting as links, have appropriate `alt` attributes.

## 2026-08-01 - [Clear Contact Instructions]

**Learning:** Vague contact instructions like 'give me a holler' can be confusing or exclusionary, particularly since GitHub doesn't have a direct private messaging feature. It's best to be explicit about how to get in touch.
**Action:** Always provide explicit instructions directing users to the email on the GitHub profile for direct contact, matching existing patterns in other repository documentation.

## 2026-08-01 - [Contextual Badge Alt Text]

**Learning:** When image badges are used as links (e.g., release badges), alt text that only includes the project name is insufficient for screen reader users. The alt text must describe the destination or context of the link.
**Action:** Ensure badge alt text includes context like 'latest release' when linking to a release page, rather than just the project name.
