#!/bin/bash

# check what git branch we're on, and export a few vars
# this saves us from using travis' matrix builds, which
# are a bit buggy for our use case
# (https://github.com/travis-ci/travis-ci/issues/4681)

if [ "${TRAVIS_BRANCH}" == "master" ]; then
    echo "Running on master"
    export DEPLOY_SERVER_NAME="production"
    export PRIVKEY_FILE="ssh-privkey-production"

elif [ "${TRAVIS_BRANCH}" == "staging" ]; then
    echo "Running on staging"
    export DEPLOY_SERVER_NAME="staging"
    export PRIVKEY_FILE="ssh-privkey-staging.pem"
else
    echo "Running on a non-deploying branch"
fi
