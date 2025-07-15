#!/bin/bash
docker run --rm \
  -v "$PWD/london-by-night:/workdir" \
  ghcr.io/igorshubovych/markdownlint-cli:latest \
  . --fix
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    find . -name '*.md' -exec sed -i '' 's/[[:space:]]\+$//' {} +
else
    # Linux
    find . -name '*.md' -exec sed -i 's/[[:space:]]\+$//' {} +
fi
