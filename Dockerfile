FROM alpine

WORKDIR /work

RUN apk update && apk add openjdk8 && apk add apache-ant

RUN echo "asdf"
RUN ls

ENTRYPOINT [ "ant" ]