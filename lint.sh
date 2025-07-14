#!/bin/bash
docker run --rm -v "$PWD:/workdir" ghcr.io/igorshubovych/markdownlint-cli:latest /workdir --fix
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    find . -name '*.md' -exec sed -i '' 's/[[:space:]]\+$//' {} +
else
    # Linux
    find . -name '*.md' -exec sed -i 's/[[:space:]]\+$//' {} +
fi
