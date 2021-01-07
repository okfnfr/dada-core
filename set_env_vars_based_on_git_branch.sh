#!/bin/bash

# decide which SSH key and variables to use based on
# the current branch.
# In gitlab CI, the variables can be protected to only be
# available in protected branches, so check settings if
# the value is not accessible here

if [ "${CI_COMMIT_BRANCH}" == "master" ]; then
    echo "Running on master"
    export DEPLOY_SERVER_NAME="production"
    echo "$SSH_PRIVKEY_PRODUCTION" | tr -d '\r' | ssh-add -
elif [ "${CI_COMMIT_BRANCH}" == "staging" ]; then
    echo "Running on staging"
    export DEPLOY_SERVER_NAME="staging"
    echo "$SSH_PRIVKEY_STAGING" | tr -d '\r' | ssh-add -
else
    echo "Running on a non-deploying branch"
fi
