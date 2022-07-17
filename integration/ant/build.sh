#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

PROJ=$PWD

docker build -t ant:1.0 ./integration/ant --no-cache
docker run --rm -v $PROJ:/work ant:1.0 ls -la ./work