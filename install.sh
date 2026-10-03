#!/usr/bin/env bash
set -euo pipefail
root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$HOME/.local/bin"
target="$HOME/.local/bin/kagami-smart-close"
if [[ -e "$target" && ! -L "$target" && ! -e "$target.pre-smart-close" ]]; then
  cp -a "$target" "$target.pre-smart-close"
fi
ln -sfn "$root/scripts/smart-close" "$target"
echo "Installed: $target -> $root/scripts/smart-close"
