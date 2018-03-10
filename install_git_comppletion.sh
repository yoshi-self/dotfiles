#!/bin/bash

#
# download git-completion.bash and git-prompt.sh
#

mkdir -p ~/dotfiles/scripts/git

git_version=`git --version | sed -e 's/git version \([^ ]*\).*/\1/'`
echo $git_version
completion_url="https://raw.githubusercontent.com/git/git/v${git_version}/contrib/completion/git-completion.bash"
prompt_url="https://raw.githubusercontent.com/git/git/v${git_version}/contrib/completion/git-prompt.sh"

echo "curl ${completion_url} -o ~/dotfiles/scripts/git/git-completion.bash"
curl ${completion_url} -o ~/dotfiles/scripts/git/git-completion.bash
echo "curl ${prompt_url} -o ~/dotfiles/scripts/git/git-promt.sh"
curl ${prompt_url} -o ~/dotfiles/scripts/git/git-prompt.sh

echo "sourcec ~/dotfiles/scripts/git/git-completion.bash"
echo "sourcec ~/dotfiles/scripts/git/git-prompt.bash"
