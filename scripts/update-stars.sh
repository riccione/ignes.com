#!/usr/bin/env bash
#
# Refreshes data/stars.json with GitHub star counts.
# Requires a GitHub token so the run stays within an authenticated rate limit.
#
# Usage:
#   GITHUB_TOKEN=ghp_... ./scripts/update-stars.sh

set -euo pipefail

if [[ -z "${GITHUB_TOKEN:-}" ]]; then
  echo "error: GITHUB_TOKEN is required" >&2
  exit 1
fi

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

repos="$(grep -rhoE 'github\.com/[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+' content/tools --include='*.md' | sed 's#github\.com/##' | sort -u)"

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT
printf '{\n' > "$tmp"
first=1

while IFS= read -r repo; do
  [[ -z "$repo" ]] && continue
  if ! json="$(curl -fsSL --max-time 20 \
      -H "Authorization: Bearer ${GITHUB_TOKEN}" \
      -H "Accept: application/vnd.github+json" \
      "https://api.github.com/repos/${repo}")"; then
    echo "warning: failed to fetch ${repo}, skipping" >&2
    continue
  fi
  count="$(printf '%s' "$json" | python3 -c 'import json,sys; print(json.load(sys.stdin).get("stargazers_count", 0))')"
  echo "  ${repo}: ${count}" >&2
  if [[ $first -eq 0 ]]; then
    printf ',\n' >> "$tmp"
  fi
  printf '  "%s": %s' "$repo" "$count" >> "$tmp"
  first=0
done <<< "$repos"

printf '\n}\n' >> "$tmp"

mkdir -p data
python3 - "$tmp" data/stars.json <<'PY'
import json
import sys

src, dst = sys.argv[1], sys.argv[2]
with open(src) as f:
    data = json.load(f)
with open(dst, "w") as f:
    json.dump(dict(sorted(data.items())), f, indent=2)
    f.write("\n")
print(f"updated {dst} with {len(data)} repositories")
PY
