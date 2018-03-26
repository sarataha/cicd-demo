#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh
heroku plugins:install heroku-container-registry
docker login -u _ --password=$HEROKU_API_KEY registry.heroku.com
heroku container:push web --app $HEROKU_APP_NAME
