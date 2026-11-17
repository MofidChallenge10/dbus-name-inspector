#!/usr/bin/env bash
set -euo pipefail
ROOT=$(cd "$(dirname "$0")/.." && pwd)
TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT
cat > "$TMP/busctl" <<'MOCK'
#!/usr/bin/env bash
cat <<'DATA'
org.freedesktop.portal.Desktop 812 xdg-desktop-portal alice :1.2 user@1000.service 1 session portal
org.example.Other 900 example bob :1.3 user@1000.service 1 session other
DATA
MOCK
chmod +x "$TMP/busctl"
output=$(PATH="$TMP:$PATH" "$ROOT/bin/dbus-name-inspector" --user --prefix org.freedesktop)
grep -q 'org.freedesktop.portal.Desktop' <<< "$output"
if grep -q 'org.example.Other' <<< "$output"; then echo 'prefix filter failed' >&2; exit 1; fi
echo 'dbus-name-inspector tests passed'
