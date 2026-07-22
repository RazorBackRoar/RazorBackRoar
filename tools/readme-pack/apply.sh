#!/usr/bin/env bash
set -euo pipefail
# Apply README + screenshot updates to all product repos.
# Run while logged in as RazorBackRoar:  gh auth status

ROOT="$(cd "$(dirname "$0")" && pwd)"
need() { command -v "$1" >/dev/null || { echo "Missing: $1"; exit 1; }; }
need gh
need python3
gh auth status >/dev/null

put_file() {
  local repo="$1" path="$2" file="$3" msg="$4"
  echo "→ $repo:$path"
  local sha=""
  sha=$(gh api "repos/RazorBackRoar/$repo/contents/$path" --jq .sha 2>/dev/null || true)
  python3 - "$repo" "$path" "$sha" "$msg" "$file" <<'PY'
import base64, json, pathlib, subprocess, sys
repo, path, sha, msg, file = sys.argv[1:6]
content = base64.b64encode(pathlib.Path(file).read_bytes()).decode("ascii")
payload = {"message": msg, "content": content, "branch": "main"}
if sha:
    payload["sha"] = sha
subprocess.run(
    ["gh", "api", "--method", "PUT", f"repos/RazorBackRoar/{repo}/contents/{path}", "--input", "-"],
    input=json.dumps(payload).encode(),
    check=True,
)
print("  ok")
PY
}

for repo in MetaBurn Libra Rusty Nexus RyuSync 4Charm; do
  put_file "$repo" "README.md" "$ROOT/$repo/README.md" \
    "Improve README with download CTA, install clarity, and screenshot"
  put_file "$repo" "docs/screenshots/app.png" "$ROOT/$repo/app.png" \
    "Add README app screenshot"
done

echo
echo "Done. All six repos updated on main."
