#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

$pwd
docker build -t ant:1.0 ./integration/ant 
docker run --rm -v $(pwd):/work ant:1.0