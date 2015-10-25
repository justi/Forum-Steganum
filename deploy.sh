#!/bin/bash
set timeout 1000
set email "$env(METEOR_EMAIL)"
set password "$env(METEOR_PASSWORD)"
set -ev

if [ "$TRAVIS_BRANCH" == "develop" ]; then

  spawn meteor deploy "$env(METEOR_DEV_DEPLOY_URL)"

  expect -- "*Email:"
  send "$email\n"
  expect -- "*assword:"
  send -- "$password\n"

fi

if [ "$TRAVIS_BRANCH" == "master" ]; then

  spawn meteor deploy "$env(METEOR_DEPLOY_URL)"

  expect -- "*Email:"
  send "$email\n"
  expect -- "*assword:"
  send -- "$password\n"

fi

