FROM alpine

WORKDIR /worka

RUN apk update && apk add openjdk8 && apk add apache-ant

ENTRYPOINT [ "ant" ]