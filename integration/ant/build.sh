#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

docker build -t ant:2.0 ./integration/ant --no-cache
docker run --rm -v //wsl$/Ubuntu-20.04/home/ricardo/proyectos/aplicacionesWeb/prueba-jenkins-docker-in-docker/integration/jenkins_home/workspace/java-ant:/work ant:2.0 ls
# docker run --rm ant:2.0 ls

# cd integration/ant && docker-compose -f docker-compose-build.yml build --no-cache