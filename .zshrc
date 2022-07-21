# https://news.ycombinator.com/item?id=11071754
alias tilda='/usr/bin/git --git-dir=$HOME/.tilda/ --work-tree=$HOME'

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
