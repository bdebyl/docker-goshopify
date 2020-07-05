FROM golang:alpine3.12
MAINTAINER Bastian de Byl <bastian@bdebyl.net>

WORKDIR /src

# aws-cli dependencies: groff, less
RUN apk -v --update add git &&
    rm /var/cache/apk/*

RUN go get github.com/bold-commerce/go-shopify

VOLUME /src
ENTRYPOINT ["go"]
