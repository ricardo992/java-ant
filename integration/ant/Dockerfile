FROM alpine

WORKDIR /work

RUN apk update && apk add openjdk8 && apk add apache-ant

RUN ant -f ./work/build.xml

# ENTRYPOINT [ "ant" ]