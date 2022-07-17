#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

docker build -t ant:1.0 ./integration/ant --no-cache
docker run --rm -v /var/jenkins_home/workspace/java-ant:/work ant:1.0 ant