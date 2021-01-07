#!/bin/bash

# check what git branch we're on, and export a few vars
# this saves us from using travis' matrix builds, which
# are a bit buggy for our use case
# (https://github.com/travis-ci/travis-ci/issues/4681)

if [ "${CI_COMMIT_BRANCH}" == "master" ]; then
    echo "Running on master"
    export DEPLOY_SERVER_NAME="production"
    echo "${SSH_PRIVKEY_PRODUCTION}" | tr -d '\r' | ssh-add -
    echo "ssh keys loaded"
elif [ "${CI_COMMIT_BRANCH}" == "staging" ]; then
    echo "Running on staging"
    export DEPLOY_SERVER_NAME="staging"
    echo "$SSH_PRIVKEY_STAGING" | tr -d '\r' | ssh-add -
    #ssh-add $SSH_PRIVKEY_STAGING
    echo "ssh keys loaded"
else
    echo "Running on a non-deploying branch"
fi
