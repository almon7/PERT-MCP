#!/bin/bash
# run-tests.sh
# This script runs the test suite for the codebase, and also checks coverage.

# Use argument if provided, otherwise default to Docker path
APP_DIR="${1:-/app/src/app}"

echo "Running tests..."
uv run pytest --cov="${APP_DIR}" "${APP_DIR}"
