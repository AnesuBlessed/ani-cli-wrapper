#!/usr/bin/env bash
set -euo pipefail

DEST_DIR="${HOME}/.local/bin"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$DEST_DIR"

echo "Installing ani-cli custom organizer..."
cp "$SCRIPT_DIR/ani-cli" "$DEST_DIR/ani-cli"
chmod +x "$DEST_DIR/ani-cli"

ln -sf "$DEST_DIR/ani-cli" "$DEST_DIR/anime-cli"

echo "Installed successfully to $DEST_DIR/ani-cli and $DEST_DIR/anime-cli"
echo "Make sure $DEST_DIR is in your PATH."
