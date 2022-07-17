#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

PROJ=$PWD

docker build -t ant:1.0 ./integration/ant --no-cache
docker run --rm -v //wsl$/Ubuntu-20.04/home/ricardo/proyectos/aplicacionesWeb/prueba-jenkins-docker-in-docker/integration/jenkins_home/workspace/java-ant:/work ant:1.0 ls -la ./work