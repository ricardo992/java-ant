FROM alpine

WORKDIR /worka

COPY /../../* .

RUN apk update && apk add openjdk8 && apk add apache-ant

# CMD [ "ant" ]