#!/bin/bash
docker run --rm -v "$PWD:/workdir" ghcr.io/igorshubovych/markdownlint-cli:latest /workdir --fix
find . -name '*.md' -exec sed -i 's/[[:space:]]\+$//' {} +
