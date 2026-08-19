#!/usr/bin/env bash
set -euo pipefail

curl --fail --silent --show-error --location \
  https://raw.githubusercontent.com/blue-build/cli/main/install.sh | bash

command -v bluebuild
bluebuild --version
