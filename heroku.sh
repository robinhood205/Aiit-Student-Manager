#!/bin/bash
echo TRAVIS_BRANCH=${TRAVIS_BRANCH}
case ${TRAVIS_BRANCH} in
    master)
	echo "it's Master!"
	;;
    release)
	echo "it's Release."
	;;
    *)
	echo "it's Other."
	;;
esac
