FROM alpine

WORKDIR /work

RUN apk update && apk add openjdk8 && apk add apache-ant

COPY build.xml ./build.xml

RUN ant -f ./build.xml all

# ENTRYPOINT [ "ant" ]