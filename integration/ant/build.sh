#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

PROJ=/home/ricardo/proyectos/aplicacionesWeb/prueba-jenkins-docker-in-docker/integration/jenkins_home/workspace/java-ant

docker build -t ant:2.0 ./integration/ant --no-cache
docker run --rm -v $PROJ:/worka ant:2.0
# docker run --rm ant:2.0 ls

# cd integration/ant && docker-compose -f docker-compose-build.yml build --no-cache