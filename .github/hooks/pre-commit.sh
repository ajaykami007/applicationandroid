#!/bin/sh

BRANCH=$(git rev-parse --abbrev-ref HEAD)
REGEX="^(develop|master|release|((feature|bigfeature|task|bugfix|hotfix)\/[A-Z]+-[0-9]+_[A-Z]+_.+))$"

if ! [[ $BRANCH =~ $REGEX ]]; then
  echo "Your commit was rejected due to branching name"
  echo "Please rename your branch with $REGEX syntax"
  exit 1
fi
