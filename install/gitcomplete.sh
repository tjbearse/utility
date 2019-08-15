#!/usr/bin/env bash
#
#
# pulls useful repos

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o "${DIR}/../git/.git-completion.bash"
