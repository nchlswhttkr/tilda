# Alacritty seems to prefer LC_ALL over LANG, undo this
export LANG="$LC_ALL"
unset LC_ALL

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# https://news.ycombinator.com/item?id=11071754
alias tilda='/opt/homebrew/bin/git -c status.showUntrackedFiles=false --git-dir=$HOME/.tilda/ --work-tree=$HOME'

# https://www.gnupg.org/documentation/manuals/gnupg/Invoking-GPG_002dAGENT.html
GPG_TTY=$(tty)
export GPG_TTY

# Pass https://www.passwordstore.org/
PASSWORD_STORE_DIR="${HOME}/Google Drive/.password-store"
export PASSWORD_STORE_DIR

# Rust
[ -s "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" "--no-use"

# Stop Docker advertising Snyk
export DOCKER_SCAN_SUGGEST=false

# Hashicorp Vault
export VAULT_ADDR="https://vault.nicholas.cloud"

# Tailscale
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
export TAILSCALE_TAILNET="nchlswhttkr.github"

# Belles
alias belles="curl --fail --show-error --silent 'https://belles.nicholas.cloud/api/transactions' | jq --raw-output '\"\$\" + ([.[] | .metadata.value] | add / 100 | tostring)'"

# Buildkite
export BUILDKITE_AGENT_CONFIG="$HOME/.buildkite-agent/buildkite-agent.cfg"

# Alacritty
alias alacritty="/Applications/Alacritty.app/Contents/MacOS/alacritty"
