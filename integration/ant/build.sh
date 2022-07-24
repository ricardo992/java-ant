#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

source ./integration/env

docker build -t ant:2.0 ./integration/ant --no-cache
docker run --rm -v $PROJ:/worka ant:2.0