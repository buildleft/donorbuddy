FROM ubuntu:16.04

RUN apt-get update && apt-get install -y ca-certificates

ADD . /donorbuddy

WORKDIR /

EXPOSE 8080

ENTRYPOINT ["/donorbuddy/donorbuddy", "/donorbuddy/config.dev.json"]
