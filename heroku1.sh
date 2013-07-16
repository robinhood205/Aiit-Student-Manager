#!/bin/bash
echo TRAVIS_BRANCH=${TRAVIS_BRANCH}
if [ ${TRAVIS_BRANCH} = "master" ]; then
    echo "it's Master!"
elif [ ${TRAVIS_BRANCH} = "release" ]; then
    echo "it's Release."
else
    echo "it's Other."
fi
