#!/usr/bin/env bash
# Generate one Shields.io badge for EPBL:
# - License badge with optional inline SVG logo (forced to white if using currentColor)
# - Links to the canonical LICENSE by default
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  tools/gen_badges.sh [-s ./assets/epbl-mark.svg] \
                      [-l https://github.com/by-The-Lindemans/Equitable_Public_Benefit_License/blob/main/LICENSE.txt]

Options:
  -s  Path to the SVG mark (optional; default: ./assets/epbl-mark.svg if present)
  -l  License URL for the badge
      default: https://github.com/by-The-Lindemans/Equitable_Public_Benefit_License/blob/main/LICENSE.txt
  -h  Help
EOF
}

# Defaults
SVG="./assets/epbl-mark.svg"
LIC_URL="https://github.com/by-The-Lindemans/Equitable_Public_Benefit_License/blob/main/LICENSE.txt"

while getopts ":s:l:h" opt; do
  case "$opt" in
    s) SVG="$OPTARG" ;;
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

LOGO_PARAM=""
if [[ -f "$SVG" ]]; then
  # Only need python3 if we will URL-encode a data URI
  if ! command -v python3 >/dev/null 2>&1; then
    echo "Note: python3 not found; proceeding without logo." >&2
  else
    # Read SVG and force white if it uses currentColor
    SVG_WHITE="$(sed -E 's/fill="currentColor"/fill="#fff"/g' "$SVG")"
    # Base64 with no wrapping (GNU coreutils)
    B64_LOGO="$(printf '%s' "$SVG_WHITE" | base64 -w0 2>/dev/null || printf '%s' "$SVG_WHITE" | base64)"
    if [[ -n "$B64_LOGO" ]]; then
      DATA_URI="data:image/svg+xml;base64,$B64_LOGO"
      ENCODED_LOGO="$(printf '%s' "$DATA_URI" \
        | python3 -c 'import sys,urllib.parse; print(urllib.parse.quote(sys.stdin.read(), safe=""))')"
      if [[ -n "$ENCODED_LOGO" ]]; then
        LOGO_PARAM="&logo=${ENCODED_LOGO}"
      fi
    fi
  fi
fi

LICENSE_BADGE="[![License: EPBL](https://img.shields.io/badge/License-EPBL-brightgreen?style=for-the-badge&labelColor=222${LOGO_PARAM})](${LIC_URL})"

printf '%s\n' "$LICENSE_BADGE"
