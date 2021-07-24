#!/bin/bash

set -euo pipefail

# TODO: Verify signature
# TODO: Confirm successful installation

echo --- Installing Terraform v$1

curl --silent --fail "https://releases.hashicorp.com/terraform/$1/terraform_$1_darwin_amd64.zip" > "$HOME/Downloads/terraform-$1.zip"
unzip -fq "$HOME/Downloads/terraform-$1.zip" "terraform" -d "$HOME/bin"
