#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

echo "estamos en:"
$pwd
echo "aca hay"
ls
docker build -t ant:1.0 ./integration/ant 
docker run --rm -v $(pwd):/work ant:1.0