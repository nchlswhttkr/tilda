# https://news.ycombinator.com/item?id=11071754
alias tilda='/usr/bin/git --git-dir=$HOME/.tilda/ --work-tree=$HOME'

# https://www.gnupg.org/documentation/manuals/gnupg/Invoking-GPG_002dAGENT.html
GPG_TTY=$(tty)
export GPG_TTY

# Custom binaries
PATH="$PATH:$HOME/bin"
