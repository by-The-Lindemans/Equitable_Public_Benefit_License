#!/usr/bin/env bash
# Generate two Shields.io badges for EPBL.
# 1) License badge: no icon; links to LICENSE.txt
# 2) Compliance badge: with inline SVG logo forced to white; links to Transparency Report
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  tools/gen_badges.sh -s /path/to/epbl-mark.svg \
                      -t https://your.domain/transparency \
                      [-l https://github.com/your-org/your-repo/blob/main/LICENSE.txt]

Options:
  -s  Path to the SVG mark (required)
  -t  Transparency Report URL for the compliance badge (required)
  -l  License URL for the license badge
      default: https://github.com/by-The-Lindemans/Public_Benefit_Equity_License/blob/main/LICENSE.txt
EOF
}

SVG=""
TRANS_URL=""
LIC_URL="https://github.com/by-The-Lindemans/Public_Benefit_Equity_License/blob/main/LICENSE.txt"

while getopts ":s:t:l:h" opt; do
  case "$opt" in
    s) SVG="$OPTARG" ;;
    t) TRANS_URL="$OPTARG" ;;
    l) LIC_URL="$OPTARG" ;;
    h) usage; exit 0 ;;
    \?) echo "Unknown option: -$OPTARG" >&2; usage; exit 2 ;;
    :)  echo "Missing argument for -$OPTARG" >&2; usage; exit 2 ;;
  esac
done

# Expand ~ even if quoted
case "${SVG:-}" in
  "~") SVG="$HOME" ;;
  "~/"*) SVG="${HOME}/${SVG#~/}" ;;
esac

# Resolve absolute path if available
if [[ -n "${SVG:-}" ]] && command -v realpath >/dev/null 2>&1; then
  SVG="$(realpath "$SVG")"
fi

# Validate required args
if [[ -z "${SVG:-}" || -z "${TRANS_URL:-}" ]]; then
  echo "Error: -s and -t are required." >&2
  usage; exit 2
fi
if [[ ! -f "$SVG" ]]; then
  echo "Error: SVG not found at $SVG" >&2
  exit 2
fi
if ! command -v python3 >/dev/null 2>&1; then
  echo "Error: python3 is required for URL-encoding." >&2
  exit 2
fi

# Read SVG and force white fill so the icon is white regardless of theme
SVG_WHITE="$(sed -E 's/fill="currentColor"/fill="#fff"/g' "$SVG")"

# Base64 with no wrapping (GNU base64: -w0)
B64_LOGO="$(printf '%s' "$SVG_WHITE" | base64 -w0)"
if [[ -z "$B64_LOGO" ]]; then
  echo "Error: base64 produced no output; check $SVG" >&2
  exit 2
fi

DATA_URI="data:image/svg+xml;base64,$B64_LOGO"

# Percent-encode the entire data URI for use in the logo= query param
ENCODED_LOGO="$(printf '%s' "$DATA_URI" \
  | python3 -c 'import sys,urllib.parse; print(urllib.parse.quote(sys.stdin.read(), safe=""))')"
if [[ -z "$ENCODED_LOGO" ]]; then
  echo "Error: encoding failed; got empty logo param" >&2
  exit 2
fi

# 1) License badge: no icon
LICENSE_BADGE="[![License: EPBL](https://img.shields.io/badge/License-EPBL-brightgreen?style=for-the-badge&labelColor=222&logo=${ENCODED_LOGO})](${LIC_URL})"

printf '%s\n%s\n' "$LICENSE_BADGE"
