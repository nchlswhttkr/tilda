#!/bin/bash
set -euo pipefail

curl --location --silent --fail "https://github.com/stedolan/jq/releases/download/jq-$1/jq-osx-amd64" > "$HOME/bin/jq"
