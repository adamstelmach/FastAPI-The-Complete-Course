#!/usr/bin/env bash
set -euo pipefail

echo "[postcreate] Using Python: $(python --version)"

# Ensure uv is on PATH (matches Dockerfile install location)
export PATH="/home/vscode/.local/bin:${PATH}"

echo "[postcreate] uv version:"
uv --version || echo "uv not found in PATH?"

# If pyproject.toml exists, sync environment
if [ -f "pyproject.toml" ]; then
  echo "[postcreate] pyproject.toml found – running 'uv sync --all-extras'..."
  uv sync --all-extras
else
  echo "[postcreate] No pyproject.toml found – you can create one and run 'uv sync' later."
fi

# Optional: show Ruff ready via uvx (no global install needed)
echo "[postcreate] Checking Ruff availability via uvx..."
uvx ruff --version || echo "Ruff not yet available via uvx."

echo "[postcreate] Done ✅"