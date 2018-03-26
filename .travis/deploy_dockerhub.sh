#!/bin/sh
docker login --email $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS

docker build -f Dockerfile -t sarataha/cicd-demo:latest .

docker tag cicd-demo sarataha/cicd-demo

docker push sarataha/cicd-demo
