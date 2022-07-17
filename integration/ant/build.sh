#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

echo "estamos en:"
echo $PWD
$PWD
echo "aca hay"
ls
docker build -t ant:1.0 ./integration/ant --no-cache
docker run --rm -v $PWD:/work ant:1.0 