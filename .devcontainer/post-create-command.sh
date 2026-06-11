#!/usr/bin/env bash

set -ueo pipefail

echo "${GIT_PUBLIC_KEY}" > ~/.ssh/id_ed25519.pub
git config --global user.signingkey ~/.ssh/id_ed25519.pub

git config --global user.name "${GIT_USER_NAME}"
git config --global user.email "${GIT_USER_EMAIL}"

# git config --global commit.gpgsign true
# git config --global gpg.format ssh

# git config --global core.autocrlf input
# git config --global core.symlinks true

git config core.hooksPath .githooks

git config --global pull.rebase true
git config --global merge.ff only

if [ -n "${FEATURES_SCRIPTS_FOLDER:-}" ]; then
    shopt -s nullglob
    
    for script in "$HOME/$FEATURES_SCRIPTS_FOLDER"/*.sh; do
        echo "script=$script"
        bash "$script"
    done
fi

### === ### === ### === ### === ### === ### === ### === ### === ### === ### === ###