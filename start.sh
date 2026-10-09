#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

if ! command -v node >/dev/null 2>&1; then
  echo "Node.js is not installed or not available in PATH."
  exit 1
fi

if [ ! -d node_modules/express ]; then
  echo "Installing Express dependency..."
  npm install
fi

echo "Starting server in this terminal. Keep this window open."
node server.js
