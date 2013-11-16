#!/bin/bash
echo TRAVIS_BRANCH=${TRAVIS_BRANCH}
git branch
case ${TRAVIS_BRANCH} in
    release)
	echo "it's Release."
   	wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
	git remote add heroku git@heroku.com:aiitstudents.git
	echo "Host heroku.com" >> ~/.ssh/config
	echo "   StrictHostKeyChecking no" >> ~/.ssh/config
	echo "   CheckHostIP no" >> ~/.ssh/config
	echo "   UserKnownHostsFile=/dev/null" >> ~/.ssh/config
	heroku keys:clear
	yes | heroku keys:add
	yes | git push -f heroku release
	heroku pg:reset DATABASE --confirm aiitstudents
	heroku run rake db:migrate
	heroku run rake db:seed
	heroku restart  
	;;

    master)
	echo "It's Master!"
	wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
	git remote add heroku git@heroku.com:aiitstudentstest.git
	echo "Host heroku.com" >> ~/.ssh/config
	echo "   StrictHostKeyChecking no" >> ~/.ssh/config
	echo "   CheckHostIP no" >> ~/.ssh/config
	echo "   UserKnownHostsFile=/dev/null" >> ~/.ssh/config
	heroku keys:clear
	yes | heroku keys:add
	yes | git push -f heroku HEAD:master
	heroku pg:reset DATABASE --confirm aiitstudentstest
	heroku run rake db:migrate
	heroku run rake db:seed
	heroku restart
	;;

    *)
	echo "it's Other."
	exit 0
	;;
esac
