FROM alpine

WORKDIR /worka

COPY /home/ricardo/proyectos/aplicacionesWeb/prueba-jenkins-docker-in-docker/integration/jenkins_home/workspace/java-ant/* .

RUN apk update && apk add openjdk8 && apk add apache-ant

# CMD [ "ant" ]