#!/bin/bash
if [[ ${TRAVIS_BRANCH} = "master" ]]; 
then
echo "aaa"
elif [[ ${TRAVIS_BRANCH} = "release" ]];
then
echo "bbb"
else
echo "ccc"; fi
