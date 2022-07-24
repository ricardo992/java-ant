#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

docker build -t ant:2.0 ./integration/ant --no-cache
docker run --rm -v C:/Users/ricar/OneDrive/Escritorio/Aplicaciones Web/prueba-jenkins/pipeline:/worka ant:2.0 ls
# docker run --rm ant:2.0 ls

# cd integration/ant && docker-compose -f docker-compose-build.yml build --no-cache