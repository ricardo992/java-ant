#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

echo "estamos en:"
echo $PWD
$PWD
echo "estamos en2:"
echo $(PWD)
$(PWD)
echo "aca hay"
ls
docker build -t ant:1.0 ./integration/ant 
docker run --rm -v /:/work ant:1.0 -f build.xml